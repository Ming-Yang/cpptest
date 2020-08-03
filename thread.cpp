#include <thread>
#include <iostream>

using namespace std;

size_t count=0;
bool finish=false;

void counter()
{
    while(!finish)
        ++count;
}

void get_val()
{
    int a;
    cin>>a;
    cout<<a<<endl;
    cout<<count<<endl;
    finish=true;
}


int main()
{
    thread t2(get_val);
    thread t1(counter);
    

    t1.join();
    t2.join();



    return 0;
}