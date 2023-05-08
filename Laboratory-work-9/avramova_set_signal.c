#include <stdio.h>
#include <signal.h>
#include <stdlib.h>

int main(int argc, char * argv[]) {
	pid_t pid;
	if(argc == 1) {
		fprintf(stderr,"Usage: %s <pid>\n",argv[0]);
		return EXIT_FAILURE;
	}
	pid = (pid_t) atoi(argv[1]);
	if (!kill(pid,SIGUSR2))
		printf("Send signal ro process with PID=%d!\n",pid);
	else
		fprintf(stderr,"Error!\n");
	return EXIT_SUCCESS;
}
