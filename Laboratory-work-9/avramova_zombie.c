#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main(void) {
    pid_t pid = fork();

    if (pid == 0) {
        printf("I am Zombie-process of Avramova\n");
        _exit(0);
    } else if (pid < 0) {
	fprintf (stderr, "Failed to create child process!\n");
	return EXIT_FAILURE;
    } else {
	fprintf(stderr,"The parent start...\n");
	sleep(10);
	fprintf(stderr,"The parent finish...\n");
    }
    return EXIT_SUCCESS;
}

