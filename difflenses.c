#include <cs50.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    string name=get_string("enter your name: ");
    int len=strlen(name);
    int l=0;
    for(int i=0; i<len; i++)
    {
        if(name[i]!='\0' && name[i]!=' ')
        {
            l++;
        }
    }
    printf("%i\n", l);

}
