#include <cs50.h>
#include <ctype.h>
#include <stdio.h>
#include <string.h>

int main(void)
{ // takes the text from the user
    string text = get_string("Text :");

    int letter = 0;
    int words = 1;
    int sent = 0;

    for (int i = 0; text[i] != '\0'; i++)
    {
        if (isalpha(text[i]))
        { // counts number of letters
            letter++;
        }
        if ((text[i]) == ' ')
        { // counts number of words
            words++;
        }

        if (text[i] == '.' || text[i] == '!' || text[i] == '?')
        { // counts the number of sentences
            sent++;
        }
    }

    float l = ((float) letter / words) * 100;
    float s = ((float) sent / words) * 100;
    // index formula
    float index = 0.0588 * l - 0.296 * s - 15.8;
    // using index to find grade
    int grade = (int) (index + 0.5);

    if (grade < 1)
    {
        printf("Before Grade 1\n");
    }
    else if (grade >= 16)
    {
        printf("Grade 16+\n");
    }
    else
    {
        printf("Grade %i\n", grade);
    }
}
