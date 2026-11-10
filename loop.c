#include <cs50.h>
#include <stdio.h>

int main(void)
{
    int n;

    //    while(true)
    //    {
    //     n=get_int("what the number ?");
    //     if(n<0)
    //     {
    //         continue;
    //     }
    //     else
    //     {
    //         break;
    //     }
    //    }


    //    do-while loop
    
        do
        {
            n=get_int("what the number ?");
        }
        while(n<0);

        for(int i=0; i<n; i++)
        {
            printf("meow \n");
        }
}



