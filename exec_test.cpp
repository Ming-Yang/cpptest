#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/types.h>
#include <stdio.h>

int main()
{
    int fd=open("./a.txt",O_WRONLY);
    if(fd<0)
        perror("open failed");
    dup2(fd, STDOUT_FILENO);
    execl("./test", "test",NULL);
}