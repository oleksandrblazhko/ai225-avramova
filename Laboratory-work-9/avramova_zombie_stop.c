#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/wait.h>

void sighandler(int sig) {
	printf("Signal handler for signal = %d\n", sig);
	wait(0);
}

int main(void) {

	int n = 1;
	signal(SIGCHLD, &sighandler);
	pid_t pid = fork();
    	if (pid == 0) {
        	fprintf(stdout, "Child of Avramova is finished\n");
        	_exit(0);
    	} else {
		fprintf(stdout, "The parent start...\n");
        	sleep(3 * n);
        	fprintf(stdout, "The parent finish...\n");
    	}

    	return EXIT_SUCCESS;
}

