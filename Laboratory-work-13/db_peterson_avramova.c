#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

int flag[2];
int turn;

struct person {
    int p_id;
    char name[20];
    int bd;
};

struct person person[2] = { { 1, "Avramova", 2023 } };

int main(void) {
    pthread_t T1_thread, T2_thread;
    void *T1(), *T2();
    pthread_create(&T1_thread, NULL, T1, NULL);
    pthread_create(&T2_thread, NULL, T2, NULL);
    pthread_join(T1_thread, NULL);
    pthread_join(T2_thread, NULL);
    return 0;
}

void *T1() {
    for(int i = 1; i <= 3; i++) {
        flag[0] = 1;
        turn = 1;
        while (flag[1] == 1 && turn == 1);
        sleep(2);
        printf("T1: Critical Region.\n");
        printf("T1: Read[bd] = %d\n", person[0].bd);
        person[0].bd = 2004;
        printf("T1: Write[bd] = %d\n", person[0].bd);
        flag[0] = 0;
        printf("T1: Noncritical Region.\n");
    }
}

void *T2() {
    for(int i = 1; i <= 3; i++) {
        sleep(1);
        flag[1] = 1;
        turn = 0;
        while (flag[0] == 1 && turn == 0);
        sleep(3);
        printf("T2: Critical Region.\n");
        printf("T2: Read[bd] = %d\n", person[0].bd);
        person[0].bd = 2005;
        printf("T2: Write[bd] = %d\n", person[0].bd);
        flag[1] = 0;
        printf("T2: Noncritical Region.\n");
   }
}
