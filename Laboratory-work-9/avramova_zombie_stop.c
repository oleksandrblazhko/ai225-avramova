#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    pid_t pid = fork();

    if (pid == 0) {
        printf("Child of Avramova is finished\n");
        exit(0);
    } else {
        sleep(3);
        wait(NULL);
        printf("Parent of Avramova is finished\n");
    }

    return EXIT_SUCCESS;
}

