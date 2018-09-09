#include <stdio.h>
#include <stdlib.h>


int main() {
    int i = 0;
    char x[44];
    for (i = 0; i < 10000000; i++) {
        sprintf(x, "%d %d", i, i);
    }
}
