#include <cs50.h>
#include <ctype.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    int point[] = {1, 3, 3, 2, 1, 4, 2, 4, 1, 8, 5, 1, 3, 1, 1, 3, 10, 1, 1, 1, 1, 4, 4, 8, 4, 10};
    int alpha1[] = {' ', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
                    'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    int alpha2[]={' ', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
                    'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
    string p1 = get_string("player 1:  ");
    string p2 = get_string("player 2:  ");
    int l1 = strlen(p1);
    int l2 = strlen(p2);
    int sum1 = 0, sum2 = 0;
    int j, k, i, l;
    for(i = 0; i < l1; i++)
    {
        char c;
        c = p1[i];

        for (j = 0; j < 27; j++)
        {
            if (islower(c))
            {
                if (alpha1[j] == c)
                {
                    break;
                }
            }
            else
            {
                if (alpha2[j] == c)
                {
                    break;
                }
            }
        }
        sum1 += point[j - 1];
    }

    for (k = 0; k < l2; k++)
    {
        char c;
        c = p2[k];

        for (l = 0; l < 27; l++)
        {
            if (islower(c))
            {
                if (alpha1[l] == c)
                {
                    break;
                }
            }
            else
            {
                if (alpha2[l] == c)
                {
                    break;
                }
            }
        }
        sum2 += point[l - 1];
    }

    if (sum1 > sum2)
    {
        printf("player 1 wins!\n");
    }
    else if (sum2 > sum1)
    {
        printf("player 2 wins!\n");
    }
    else
    {
        printf("Tie!\n");
    }
}
