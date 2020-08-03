shm_ipc:shm_ipc.c shm_test.c
	gcc -o $@ $^ -lrt

client:client.cpp
	gcc -o $@ $^

server:server.cpp
	gcc -o $@ $^

multi:multi.cpp
	g++ -o $@ $^ -lpthread -lrt

mmap:mmap.cpp
	g++ -o $@ $^ -lrt