#include <unistd.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <iostream>



int main()
{
    const char buff[100]={'a'};
    int fd = shm_open("region", O_CREAT | O_EXCL | O_RDWR, S_IRUSR | S_IWUSR);
    std::cout<<fd<<std::endl;
    void *p = mmap(nullptr, 200, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    write(fd, buff, 100);
    for(int i=0;i<10;++i)
        p[i]='b';

    return 0;
}