#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <unistd.h>
#include <errno.h>

int turn = 0;
struct person {
    int p_id;
    char name[20];
    int bd;
};

struct person person[2] = { { 1, "Avramova", 2023 } };

void main(void) {
   pthread_t T1_thread, T2_thread;
   void *T1(), *T2();
   pthread_create(&T1_thread, NULL, T1, NULL);
   pthread_create(&T2_thread, NULL, T2, NULL);
   pthread_join(T1_thread, NULL);
   pthread_join(T2_thread, NULL);
}

void *T1() {
    while (1) {
        while (turn != 0);
        sleep(2);
        printf("T1: Critical Region\n");
        printf("T1: Read[bd] = %d\n", person[0].bd);
        sleep(1);
        person[0].bd = 2004;
        printf("T1: Write[bd] = %d\n", person[0].bd);
        sleep(1);
        turn = 1;
        printf("T1: Noncritical Region\n");
        sleep(2);
    }
}

void *T2() {
    while (1) {
        sleep(1);
        while (turn == 0);
        printf("T2: Critical Region\n");
        sleep(3);
        printf("T2: Read[bd] = %d\n", person[0].bd);
        sleep(1);
        person[0].bd = 2005;
        printf("T2: Write[bd] = %d\n", person[0].bd);
        sleep(1);
        turn = 0;
        printf("T2: Noncritical Region\n");
        sleep(1);
    }
}

