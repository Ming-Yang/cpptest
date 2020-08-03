#include <stdlib.h>
#include <stdio.h>
#include <stddef.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>

#define MAXLINE 80

char *client_path = "client.socket";
char *server_path = "server.socket";

int main()
{
    struct sockaddr_un cliun, serun;
    int len;
    char buf[100];
    int sockfd, n;

    if ((sockfd = socket(AF_UNIX, SOCK_STREAM, 0)) < 0)
    {
        perror("client socket error");
        exit(1);
    }

    memset(&serun, 0, sizeof(serun));
    serun.sun_family = AF_UNIX;
    strcpy(serun.sun_path, server_path);
    len = offsetof(struct sockaddr_un, sun_path) + strlen(serun.sun_path);
    // unlink(cliun.sun_path);
    if (bind(sockfd, (struct sockaddr *)&cliun, len) < 0)
    {
        perror("bind error");
        exit(1);
    }
    if (connect(sockfd, (struct sockaddr *)&serun, len) < 0)
    {
        perror("connect error");
        exit(1);
    }

    while (fgets(buf, MAXLINE, stdin) != NULL)
    {
        write(sockfd, buf, strlen(buf));
        n = read(sockfd, buf, MAXLINE);
        if (n < 0)
        {
            printf("the other side has been closed.\n");
        }
        else
        {
            write(STDOUT_FILENO, buf, n);
        }
    }
    close(sockfd);
    return 0;
}
