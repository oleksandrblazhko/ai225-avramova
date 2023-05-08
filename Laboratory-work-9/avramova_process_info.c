#include <stdio.h>
#include <unistd.h>

int main (void) {
	fprintf(stdout,"GroupRrocessID=%d\n",getpgrp());
	fprintf(stdout,"ProcessID=%d\n",getpid());
	fprintf(stdout,"GroupIDUser=%d\n",getgid());
	fprintf(stdout,"UserID=%d\n",getuid());
	fprintf(stdout,"PPID=%d\n",getppid());
	return 0;
}

