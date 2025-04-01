#include "auth.h"
#include "data.h"
#include "parse.h"
#include <stdio.h>





int main(){

    Session session;
    while(1){
        int d;
        printf("WELCOME TO THE CLI LABA1\n");
        printf("SELECT ACTION\n1 --- SIGN IN\n2 --- SIGN UP\n0 --- EXIT PROGRAMM\n");
        scanf("%d\n", &d);
        registerState register_code =  select_action(d);
        fflush(stdout);
        if (!register_code){
            printf("GOODBYE\n");
        } else if (register_code == 1){
            int code = sign_in_user(&session);
            if (code){
                printf("HUI POZHUI\n");
            }

        } else if (register_code == 2){
            //регистрация

        } else {
            printf("YOUR CHOICE INCORRECTED\nTRY AGAIN\n");
        }
        
    }
}