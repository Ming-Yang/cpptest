#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>

int main()
{
    int sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd == -1)
    {
        perror("socket"), exit(-1);
    }

    int opt=1;
    setsockopt(sockfd, SOL_SOCKET, SO_REUSEPORT, &opt, sizeof(int));

    printf("sockfd:%d\n", sockfd);
    struct sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_port = htons(2222);
    addr.sin_addr.s_addr = inet_addr("127.0.0.1");
    int res = bind(sockfd, (struct sockaddr *)&addr,
                   sizeof(addr));
    if (res == -1)
    {
        perror("bind");
        exit(-1);
    }
    printf("bind ok\n");

    listen(sockfd, 100); //监听

    struct sockaddr_in client;
    socklen_t len = sizeof(client);
    while (true)
    {
        int fd = accept(sockfd, (struct sockaddr *)&client, &len);
        printf("accept fd:%d\n", fd);
        char *from = inet_ntoa(client.sin_addr); //十六进制转点分十进制
        printf("%s连接成功\n", from);
        char buf[100] = {};
        res = read(fd, buf, sizeof(buf));
        printf("接受了%d字节，内容:%s\n", res, buf);
        write(fd, "welcome", 7);
        // close(fd);
    }
    
    close(sockfd);
    return 0;
}
