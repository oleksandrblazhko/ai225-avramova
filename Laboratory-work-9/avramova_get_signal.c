#include <stdio.h>
#include <signal.h>
#include <unistd.h>
#include <stdlib.h>

static void sig_usr(int signo) {
        if (signo == SIGUSR2)
                printf("Отримано сигнал SIGUSR2\n");
}

int main (void) {
        if (signal(SIGUSR2, sig_usr) == SIG_ERR)
                fprintf(stderr, "Неможливо перехопити сигнал SIGUSR2\n");
        printf("Мій PID = %d. Чекаю на сигнал SIGUSR2\n",getpid());
        for ( ; ; )
                pause();
        return EXIT_SUCCESS;
}
