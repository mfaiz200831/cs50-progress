#include <cs50.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    string a =get_string("Enter your word: ");
    string string[]={"bank", "bussiness", "diamond","loop", "theif"};
    for(int i=0; i<5; i++)
    {
        if(strcmp(string[i], a)==0)
        {
            printf("FOUND\n");
            return 0;
        }
    }
    printf("NOT FOUND\n");
    return 1;

}
