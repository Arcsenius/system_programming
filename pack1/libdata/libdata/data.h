#ifndef DATA_H
#define DATA_H

typedef struct 
{
    char login[7];
    int pin;
    unsigned int command_limit;
}User;

typedef struct 
{
    User user;  
    unsigned int command_used;
}Session;



#endif // DATA_H