#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

int main()
{
    int sockfd = socket(AF_INET, SOCK_STREAM, 0);
    printf("sockfd:%d\n", sockfd);
    if (sockfd == -1)
    {
        perror("socket"), exit(-1);
    }
    
    int opt=1;
    setsockopt(sockfd, SOL_SOCKET, SO_REUSEPORT, &opt, sizeof(int));

    struct sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_port = htons(2223);                   //连接端口
    addr.sin_addr.s_addr = inet_addr("127.0.0.1"); //都是服务器的，改成连接IP

    int res;
    res = bind(sockfd, (struct sockaddr *)&addr,
                   sizeof(addr));

    if (res == -1)
    {
        perror("bind");
        exit(-1);
    }

    addr.sin_port = htons(2222);                   //连接端口
    res = connect(sockfd, (struct sockaddr *)&addr,
                      sizeof(addr));
    
    if (res == -1)
    {
        perror("connect"), exit(-1);
    }
    printf("连接成功\n");
    write(sockfd, "hello", 5);
    char buf[100] = {};
    res = read(sockfd, buf, sizeof(buf));
    printf("读到了%d字节，内容：%s\n", res, buf);
    while(true);
    close(sockfd);
    return 0;
}
