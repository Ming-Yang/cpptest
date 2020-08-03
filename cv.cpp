#include <mutex>
#include <condition_variable>
#include <functional>
#include <queue>
#include <thread>
#include <iostream>

std::mutex mtx;
std::condition_variable cv;
bool ready = false;

void print_id(int id)
{
    std::unique_lock<std::mutex> lck(mtx);
    while (!ready)
        cv.wait(lck);
    // ...
    std::cout << "thread " << id << '\n';
}

void go()
{
    std::unique_lock<std::mutex> lck(mtx);
    ready = true;
    lck.unlock();
    cv.notify_one();
}

int main()
{
    std::thread threads[10];
    // spawn 10 threads:
    for (int i = 0; i < 10; ++i)
        threads[i] = std::thread(print_id, i);

    std::cout << "10 threads ready to race...\n";
    go(); // go!

    for (auto &th : threads)
        th.join();

    return 0;
}
