#include <stdio.h>

void biggest3() {
    int a, b, c;
    printf("Enter 3 numbers: ");
    scanf("%d %d %d", &a, &b, &c);
    if (a > b && a > c)
        printf("%d is the biggest\n", a);
    else if (b > c)
        printf("%d is the biggest\n", b);
    else
        printf("%d is the biggest\n", c);
}
