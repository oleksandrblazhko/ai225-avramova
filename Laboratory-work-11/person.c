#include "person.h"

int main(void) {
    PGconn* conn = connect_person();
    if (conn == NULL)
        return EXIT_FAILURE;

   PQfinish(conn);
   return EXIT_SUCCESS;
}
