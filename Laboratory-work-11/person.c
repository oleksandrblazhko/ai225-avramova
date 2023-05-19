#include "person.h"
#include "libpq-fe.h"

ExecStatusType remove_person(PGconn* conn);
ExecStatusType add_person(PGconn* conn);
ExecStatusType get_person(PGconn* conn);

int main(void) {
    PGconn* conn = connect_person();
    if (conn == NULL)
        return EXIT_FAILURE;

   ExecStatusType remove_status = remove_person(conn);
    if (remove_status != PGRES_COMMAND_OK) {
        fprintf(stderr, "Failed to delete person.\n");
        PQfinish(conn);
        return EXIT_FAILURE;
    }

   ExecStatusType add_status = add_person(conn);
    if (add_status != PGRES_COMMAND_OK) {
        fprintf(stderr, "Failed to add person.\n");
        PQfinish(conn);
        return EXIT_FAILURE;
    }

   ExecStatusType get_status = get_person(conn);
    if (get_status != PGRES_COMMAND_OK) {
        fprintf(stderr, "Failed to get person.\n");
        PQfinish(conn);
        return EXIT_FAILURE;
    }

   PQfinish(conn);

   return EXIT_SUCCESS;
}
