#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main(void) {
    pid_t pid;
    pid = fork();

    if (pid == -1) {
        perror("fork");
        exit(EXIT_FAILURE);
    } else if (pid == 0) {
        printf("the child of Students' Avramova executes: ls\n");
        sleep(1);
        char *args[] = {"ls", "-l", "-a", NULL};
        execv("/bin/ls", args);
        perror("execv");
        exit(EXIT_FAILURE);
    } else {
        wait(NULL);
        exit(EXIT_SUCCESS);
    }
}

