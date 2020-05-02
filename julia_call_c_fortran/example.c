#include <stdio.h>

float funcAdd(float input) {
    return input + 1.5;
}


int main() {
    printf("Hello World!");
    printf("%g", funcAdd(3.0));
    return 0;
}
