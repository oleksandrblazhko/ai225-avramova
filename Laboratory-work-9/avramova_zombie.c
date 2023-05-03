#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main() {
    pid_t pid = fork();
    if (pid == 0) {
        printf("I am Zombie-process of Avramova\n");
        exit(0);
    } else {
        sleep(1);
        printf("I am Parent-process of Avramova\n");
    }
    return 0;
}

