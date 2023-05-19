#include "person.h"

PGconn* connect_person(void) {
    PGconn* conn;
    char db_name[] = "avramova";
    char user_name[] = "avramova";

    conn = PQsetdbLogin(NULL, NULL, NULL, NULL, db_name, user_name, NULL);
    if (PQstatus(conn) == CONNECTION_OK) {
        printf("Connection to database %s is successful!\n", db_name);
        return conn;
    } else {
        fprintf(stderr, "Connection to database %s failed: %s\n", db_name, PQerrorMessage(conn));
        PQfinish(conn);
        return NULL;
    }
}
