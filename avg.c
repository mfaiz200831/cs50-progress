#include <stdio.h>
#include <cs50.h>

float average(int l, int scores[])
{
    int s=0;
    for(int i=0; i<l; i++)
    {
        s+=scores[i];
    }
    return(s/l);
}




int main(void)
{

    int N=get_int("enter the number of scores you want to find the average of: ");
   // const int N=3; to decalare that this is a constant and by ysing the keyword the value of N will not be changed anywhere on this program
    int scores[N];
   // int s=0;
    for(int i=0; i<N; i++)
    {
        scores[i]=get_int("score: ");
        // s=s+scores[i];
    }
    printf("%f is the average", average(N, scores));


}


char rotate(char c, int key)
{
    if(isupper(c))
    {
        c=c+key;
        while(c>'Z')
        {
            c=c-26;
        }
        return c;
    }
    else if(islower(c))
    {
        c=c+key;
        while(c>'z')
        {
            c=c-26;
        }
        return c;
    }
    else
    {
        return c;
    }

}
