#include "parse.h"

registerState select_action(int ch){
    switch (ch)
    {
    case 1:
        return SIGN_IN;
        break;
    case 2:
        return SIGN_UP;
    case 0:
        return EXIT;
    default:
        return ABORTED;
    }
}