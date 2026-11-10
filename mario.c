#include <cs50.h>
#include <stdio.h>
int main(void)
{
    int n;
    do
    {
        n = get_int("Height: ");
    }
    while (n < 1 || n > 8);
    int s, q, k;
    for (int i = 0; i < n; i++)
    {
        k = n - i - 1;
        while (k > 0)
        {
            printf(" ");
            k--;
        }
        for (s = 0; s < i + 1; s++)
        {
            printf("#");
        }
        printf("  ");
        for (q = 0; q < i + 1; q++)
        {
            printf("#");
        }
        printf("\n");
    }
}
