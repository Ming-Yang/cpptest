#include "shm_ipc.h"

#define _CAS_(ptr, old, new) __sync_bool_compare_and_swap(ptr, old, new)

char *get_shm_head_cur(char *p)
{
    return p + sizeof(size_t);
}

char *get_shm_head_next(char *p)
{
    return p + sizeof(size_t) + sizeof(char *);
}

char *get_shm_tail_cur(char *p)
{
    return p + sizeof(size_t) + 2 * sizeof(char *);
}

char *get_shm_tail_next(char *p)
{
    return p + sizeof(size_t) + 3 * sizeof(char *);
}

char *get_shm_payload_head(char *p)
{
    return p + sizeof(shm_head_t);
}

void print_shm_info(char *p)
{
    shm_head_t shm_head;
    memcpy(&shm_head, p, sizeof(shm_head_t));
    fprintf(stderr, "head cur 0x%lx, head next 0x%lx\ntail cur 0x%lx, tail next 0x%lx\n",
                (long)shm_head.head_cur, (long)shm_head.head_next, (long)shm_head.tail_cur, (long)shm_head.tail_next);
}

char *mk_shm(size_t size)
{
    char *shm_name = "abc";
    int fd = shm_open(shm_name, O_CREAT | O_RDWR | O_TRUNC, S_IRUSR | S_IWUSR);
    if (fd < 0)
    {
        perror("shm_open failed");
        return NULL;
    }

    size_t shm_head_size = sizeof(shm_head_t);
    ftruncate(fd, size + shm_head_size);
    char *shm_ptr = mmap(NULL, size + shm_head_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    if (shm_ptr == MAP_FAILED)
    {
        perror("mmap failed");
        return NULL;
    }

    *(size_t *)shm_ptr = size;
    printf("shm at %p\n", shm_ptr);
    return shm_ptr;
}

int init_shm(char *ptr)
{
    char *payload_head_ptr = get_shm_payload_head(ptr);
    size_t shm_payload_size = *(size_t *)ptr;
    shm_head_t shm_head = {shm_payload_size, payload_head_ptr, payload_head_ptr, payload_head_ptr, payload_head_ptr};
    if (memcpy(ptr, &shm_head, sizeof(shm_head_t)) == NULL)
    {
        perror("shm head write failed");
        return -1;
    }

    return 0;
}

int write_shm(char *shm, char *write_buffer, size_t lenth)
{
    shm_head_t shm_head;
    size_t occupy_size;
    size_t left_size;
    size_t max_write;
    size_t head_offset;
    char *head_next;
    char *tail_cur;
    char *head_new;
    do
    {
        memcpy(&shm_head, shm, sizeof(shm_head));
        head_next = shm_head.head_next;
        tail_cur = shm_head.tail_cur;

        occupy_size = head_next >= tail_cur ? head_next - tail_cur : head_next + shm_head.lenth - tail_cur;
        left_size = shm_head.lenth - occupy_size - 1;
        max_write = left_size > lenth ? lenth : left_size;
        if (max_write == 0)
            return 0;
        head_offset = (head_next - shm - sizeof(shm_head_t) + max_write) < shm_head.lenth ? max_write : max_write - shm_head.lenth;
        head_new = head_next + head_offset;

    } while (!_CAS_((long *)(get_shm_head_next(shm)), head_next, head_new));
    // printf("shm_head_next:%p\n", head_next);
    if (head_offset >= 0)
    {
        memcpy(shm_head.head_cur, write_buffer, max_write);
    }
    else
    {
        size_t append_size = shm_head.lenth - (shm_head.head_cur - shm - sizeof(shm_head_t));
        size_t circular_size = max_write - append_size;
        char *payload_head = get_shm_payload_head(shm);
        memcpy(head_next, write_buffer, append_size);
        memcpy(payload_head, write_buffer + append_size, circular_size);
    }

    while (!_CAS_((long *)(get_shm_head_cur(shm)), head_next, head_new))
        ;

    return max_write;
}

int read_shm(char *shm, char *read_buffer, size_t lenth)
{
    shm_head_t shm_head;
    size_t avail_size;
    size_t max_read;
    size_t tail_offset;
    char *tail_next;
    char *head_cur;
    char *tail_new;
    do
    {
        memcpy(&shm_head, shm, sizeof(shm_head));
        head_cur = shm_head.head_cur;
        tail_next = shm_head.tail_next;

        avail_size = head_cur >= tail_next ? head_cur - tail_next : head_cur + shm_head.lenth - tail_next;
        max_read = avail_size > lenth ? lenth : avail_size;
        if (avail_size == 0)
            return 0;
        tail_offset = (tail_next - shm - sizeof(shm_head_t) + max_read) < shm_head.lenth ? max_read : max_read - shm_head.lenth;
        tail_new = tail_next + tail_offset;
    } while (!_CAS_((long *)(get_shm_tail_next(shm)), tail_next, tail_new));

    if (tail_offset >= 0)
    {
        memcpy(read_buffer, shm_head.tail_cur, max_read);
    }
    else
    {
        size_t append_size = shm_head.lenth - (shm_head.tail_cur - shm - sizeof(shm_head_t));
        size_t circular_size = max_read - append_size;
        char *payload_head = get_shm_payload_head(shm);
        memcpy(read_buffer, shm_head.tail_cur, append_size);
        memcpy(read_buffer, payload_head + append_size, circular_size);
    }

    while (!_CAS_((long *)(get_shm_tail_cur(shm)), tail_next, tail_new))
        ;

    return max_read;
}
