#include <iostream>
#include <thread>
#include <unistd.h>

using namespace std;

thread_local long long sum=1;

void loop()
{
    for(long long i=1000000;i>0;--i)
        sum+=i;
    printf("id:%d,sum:%lld\n", getpid(),sum);
}


int main()
{
    thread th1(loop);
    thread th2(loop);
    thread th3(loop);
    thread th4(loop);
    th1.join();
    th2.join();
    th3.join();
    th4.join();
    return 0;
}
