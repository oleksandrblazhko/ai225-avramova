#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    int pid = fork();
    if (pid == 0) {
        for (int i = 0; i < 3; i++) {
            printf("Parent of Avramova (PPID=%d)\n", getppid());
            sleep(1);
        }
        exit(0);
    } else if (pid > 0) {
        sleep(2);
        exit(0);
    } else {
        perror("fork");
        exit(1);
    }
}

