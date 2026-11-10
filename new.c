#include <stdio.h>
#include <cs50.h>

// prototype
void meow(int times);

int main(void)
{
    int n=get_int("enter your number: ");
    meow(n);
}


void meow(int times)
{
    for (int i =0; i<times; i++)
    {
        printf("hello\n");
    }


}
