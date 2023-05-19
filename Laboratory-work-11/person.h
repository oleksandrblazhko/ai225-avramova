#include <stdio.h>
#include <stdlib.h>
#include "libpq-fe.h"

PGconn* connect_person (void);
ExecStatusType remove_person(PGconn* conn);
ExecStatusType add_person(PGconn* conn);
ExecStatusType get_person(PGconn* conn);

