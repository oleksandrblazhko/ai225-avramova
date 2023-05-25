#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <sys/types.h>

void *f1(void *arg);
void *f2(void *arg);

int main(void) {
    pthread_t f2_thread, f1_thread;
    int n = 1;
    pthread_create(&f1_thread, NULL, f1, &n);
    pthread_create(&f2_thread, NULL, f2, &n);
    pthread_join(f1_thread, NULL);
    pthread_join(f2_thread, NULL);
    return 0;
}

void *f1(void *arg) {
    int i, n = *(int *)arg;
    char name[] = "avramova";
    for (i = 0; i < n + 5; i++) {
        printf("f1: %s\n", name);
        sleep(1);
    }
    pthread_exit(NULL);
}

void *f2(void *arg) {
    int i, n = *(int *)arg;
    char name[] = "avramova";
    for (i = 0; i < n + 5; i++) {
        printf("f2: %s\n", name);
        sleep(1);
    }
    pthread_exit(NULL);
}
