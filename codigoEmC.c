#include <stdio.h>

int soma(int a, int b){
    return (a + b);
}

int main(){
    int a = 0;
    int b = 10;

    if(a == b){
        printf("A é igual a B.\n");
    }
    else{
        printf("A é diferente de B.\n");
    }

    int resultado = soma(a, b);
}