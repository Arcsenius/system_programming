#ifndef PARSE_H
#define PARSE_H

typedef enum {
    EXIT,
    SIGN_IN,
    SIGN_UP,
    ABORTED
} registerState;


registerState select_action(int ch);

#endif // PARSE_H