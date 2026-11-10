#include <cs50.h>
#include <ctype.h>
#include <stdio.h>
#include <string.h>

char rotate(char c, int key);
bool only_digits(string s);

int main(int argc, string argv[])
{
    if (argc != 2) // check the number
    {
        printf("Usage: ./caesar key\n");
        return 1;
    }

    if (!only_digits(argv[1]))
    {
        printf("Usage: ./caesar key\n");
        return 1;
    }

    int key = 0;
    int n = strlen(argv[1]);
    for (int i = 0; i < n; i++)
    {
        key = key * 10 + (argv[1][i] - '0');
    }

    string s = get_string("plain text: ");
    printf("ciphertext: ");
    int l = strlen(s);
    for (int i = 0; i < l; i++)
    {
        printf("%c", rotate(s[i], key));
    }
    printf("\n");
    return 0;
}
rm cyberchase.zip
bool only_digits(string s)
{
    int n = strlen(s);
    for (int i = 0; i < n; i++)
    {
        if (!isdigit(s[i]))
        {
            return false;
        }
    }
    return true;
}

char rotate(char c, int key)
{
    if (isupper(c))
    {
        return 'A' + (c - 'A' + key) % 26;
    }
    else if (islower(c))
    {
        return 'a' + (c - 'a' + key) % 26;
    }
    else
    {
        return c;
    }
}
