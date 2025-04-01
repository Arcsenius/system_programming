#include "auth.h"


int sign_in_user(Session* session) {
    User* user = (User*)malloc(sizeof(User));
    if (!user) {
        printf("ERROR: MEMORY ALLOCATION FAILED\n");
        return 1;
    }

    printf("ENTER YOUR LOGIN NAME (MAX 6 CHARACTERS)\n");
    char input[256]; // Буфер для чтения всей строки
    if (!fgets(input, sizeof(input), stdin)) {
        printf("ERROR: FAILED TO READ LOGIN\n");
        free(user);
        return 1;
    }

    input[strcspn(input, "\n")] = '\0';

    if (strlen(input) > 7) {
        printf("ERROR: LOGIN TOO LONG (MAX 6 CHARACTERS)\n");
        free(user);
        return 1;
    }

    for (int i = 0; input[i]; i++) {
        if (!(isalpha(input[i]) || isdigit(input[i]))) {
            printf("ERROR: INVALID LOGIN CHARACTERS\n");
            free(user);
            return 1;
        }
    }
    strcpy(user->login, input);

    printf("ENTER YOUR PASSWORD (EXACTLY 6 DIGITS)\n");
    if (!fgets(input, sizeof(input), stdin)) {
        printf("ERROR: FAILED TO READ PASSWORD\n");
        free(user);
        return 1;
    }

    input[strcspn(input, "\n")] = '\0';

    if (strlen(input) > 6) {
        printf("ERROR: PASSWORD MUST BE EXACTLY 6 DIGITS\n");
        free(user);
        return 1;
    }

    for (int i = 0; input[i]; i++) {
        if (!isdigit(input[i])) {
            printf("ERROR: PASSWORD MUST CONTAIN ONLY DIGITS\n");
            free(user);
            return 1;
        }
    }

    unsigned int password_t = string_to_int(input);
    user->command_limit = -1;
    user->pin = password_t;
    
    
    int exist = find_in_db(user);

    switch (exist)
    {
    case 2:
        printf("ERROR: A USER WITH THIS NAME EXIST\n");
        free(user);
        return 1;
    case 1:
        printf("ERROR: DATABASE UNAVAILABLE\n");
        free(user);
        return 1;
    case 0:
        printf("ADDING TO DATABASE...");
        break;
    default:
        break; 
    }


    if(add_to_base(user)){
        printf("ERROR: USER DOESNOT ADD TO DB");
        return 1;
    }



    printf("THATS OK/n");

return 0;


}



unsigned int string_to_int(char* str) {
    unsigned int result = 0;
    
    if (str == NULL) {
        return 0;  // Защита от NULL
    }

    while (*str) {
        if (!isdigit(*str)) {
            break;  // Прерываем цикл, если символ не цифра
        }
        result = (result * 10) + (*str - '0');
        str++;  // Переход к следующему символу
    }

    return result;
}



int find_in_db(User* user){
    FILE* db = fopen("../../pack1/libdata/libdata/users.db", "r");

    if (!db){
        return 1;
    }
    
    char buffer[100];
    while(fgets(buffer, sizeof(buffer), db)){
        char* name = strtok(buffer, ";");
        if (!(strcmp(name, user->login))){
            fclose(db);
            return 2;
        }
    }
    fclose(db);
    return 0;
}



int add_to_base(User* user){
    FILE* db = fopen("../../pack1/libdata/libdata/users.db", "a");

    if (!db){
        return 1;
    }

    fprintf(db, "%s;%lu;%d\n", user->login, user->pin, user->command_limit);
    
    fclose(db);

    return 0;
}
