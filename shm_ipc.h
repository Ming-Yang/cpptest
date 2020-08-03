#pragma once

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <string.h>
#include <stdbool.h>

typedef struct
{
    size_t lenth;
    char *head_cur;
    char *head_next;
    char *tail_cur;
    char *tail_next;
} shm_head_t;

char *mk_shm(size_t size);
int init_shm(char *ptr);
int write_shm(char *shm, char *write_buffer, size_t lenth);
int read_shm(char *shm, char *read_buffer, size_t lenth);
void print_shm_info(char *p);

