#ifndef AUTH_H
#define AUTH_H
#include "data.h"
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>

int sign_in_user(Session* session);
unsigned int string_to_int(char* );
int find_in_db(User* user);
int add_to_base(User* user);
#endif // AUTH_H