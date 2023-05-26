#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>

#define NAMEDPIPE_NAME "avramova"
#define BUFSIZE 50

int main (int argc, char ** argv) {
    int fd, len;
    char buf[BUFSIZE];

    if (mkfifo(NAMEDPIPE_NAME, 0660)) {
        perror("Error in mkfifo!");
        return 1;
    }
    printf("%s is created.\n", NAMEDPIPE_NAME);

    FILE *pipe = popen("ls -l -a", "r");
    if (!pipe) {
        fprintf(stderr, "Error executing command!");
        return 1;
    }

    if ((fd = open(NAMEDPIPE_NAME, O_WRONLY)) <= 0) {
         fprintf(stderr, "Error in open!");
         return 1;
    }
    printf("%s is opened.\n", NAMEDPIPE_NAME);

    while (fgets(buf, BUFSIZE, pipe) != NULL) {
        len = strlen(buf);
        if (write(fd, buf, len) != len) {
            fprintf(stderr, "Error writing to pipe!");
            return 1;
        }
    }

    pclose(pipe);
    close(fd);
    remove(NAMEDPIPE_NAME);
    return 0;
}

