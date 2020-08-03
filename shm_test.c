#include "shm_ipc.h"

#include <sys/time.h>

int main(int argc, char **argv)
{
    int shm_size = 1 << 10;
    int buff_size = 1 << 10;
    int loop_times = 1000000;

    if (argc == 4)
    {
        shm_size = atoi(argv[1]);
        buff_size = atoi(argv[2]);
        loop_times = atoi(argv[3]);
    }

    char *shm = mk_shm(shm_size);
    init_shm(shm);
    print_shm_info(shm);

    char *write_buffer = calloc(buff_size, sizeof(char));
    char *read_buffer = calloc(buff_size, sizeof(char));
    for (int i = 0; i < buff_size; ++i)
        write_buffer[i] = 'a' + i % 26;

    pid_t pid = fork();
    if (pid < 0)
    {
        perror("fork failed");
        return -1;
    }
    else if (pid == 0) //child
    {
        raise(SIGSTOP);

        long long success = 0;
        struct timeval start, end;
        gettimeofday(&start, NULL);

        for (int i = 0; i < loop_times; ++i)
        {
            int write_size = buff_size;
            int success_size = 0;
            while (write_size > 0)
            {
                success_size += write_shm(shm, write_buffer + (buff_size - write_size), write_size);
                write_size = buff_size - success_size;
            }
            // print_shm_info(shm);
            success+=buff_size;
        }
        gettimeofday(&end, NULL);
        double diff = end.tv_sec - start.tv_sec + end.tv_usec / 1000000.0 - start.tv_usec / 1000000.0;
        printf("difftime:%f, child success:%lld, lost:%lld\n", diff, success, (long long)buff_size * (long long)loop_times - success);
        printf("speed:%fMbps\n", (success / diff / (1 << 20)) * 8);

        exit(0);
    }

    else //parent
    {
        waitpid(pid, NULL, WUNTRACED);

        int recv = 0;
        printf("reading...\n");
        kill(pid, SIGCONT);
        for (int i = 0;;++i)
        {
            recv = read_shm(shm, read_buffer, buff_size);
            
            // if(recv == 0)
            // {
            //     continue;
            // }
            // else if (recv < buff_size)
            // {
            //     printf("rcv times:%d\n", i);
            //     printf("recv bytes:%d\n", recv);
            //     printf("recv too small\n");
            //     print_shm_info(shm);
            //     kill(pid, SIGTERM);
            //     break;
            // }
            // else if(memcmp(read_buffer, write_buffer, buff_size) != 0)
            // {
            //     printf("rcv times:%d\n", i);
            //     printf("recv bytes:%d\n", recv);
            //     printf("recv wrong data\n");
            //     print_shm_info(shm);
            //     kill(pid, SIGTERM);
            //     break;
            // }
                
        }
        printf("rcv:%d\n", recv);
        exit(0);
    }
}