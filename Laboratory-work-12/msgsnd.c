#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include <sys/msg.h>

#define MAX_TEXT 512

struct my_msg_st {
    long int my_msg_type;
    char some_text[MAX_TEXT];
};

int main(void) {
    struct my_msg_st my_data;
    int msgid;
    char buffer[BUFSIZ] = "Message from Avramova.";
    int variant = 1;
    key_t key = 1000 + variant;
    msgid = msgget(key, 0777 | IPC_CREAT);
    if (msgid == -1) {
        fprintf(stderr,"msgget failed with error: %d.\n", errno);
        return EXIT_FAILURE;
    }
    my_data.my_msg_type = 1;
    strcpy(my_data.some_text, buffer);
    if (msgsnd(msgid, (void*)&my_data, MAX_TEXT, 0) == -1) {
         fprintf(stderr, "msgsnd failed.\n");
         return EXIT_FAILURE;
    }
    else
         printf("I sent message: %s.\n", my_data.some_text);
    return EXIT_SUCCESS;
}

