#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "libpq-fe.h"

int main(int argc, char* argv[])
{
    if (argc < 3) {
        fprintf(stderr, "Usage: %s database user\n", argv[0]);
        return EXIT_FAILURE;
    }

    char* db_name = argv[1];
    char* user_name = argv[2];

    PGconn* conn = PQsetdbLogin(NULL, NULL, NULL, NULL, db_name, user_name, NULL);
    if (PQstatus(conn) == CONNECTION_OK)
        printf("Connection to database %s is successful!\n", db_name);
    else {
        fprintf(stderr, "Connection to database %s failed: %s\n", db_name, PQerrorMessage(conn));
        return EXIT_FAILURE;
    }

    PQfinish(conn);
    return EXIT_SUCCESS;
}
