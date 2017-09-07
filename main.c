#include <stdio.h>

extern void printff();

int main()
{	
    //--------	
    printff("TEst hex, dec, char, string, bin %x %d%c %s %b. %c %s %x %d %%\n", 5516, 100, '!', "STRING\n", 18, 'I', "love", 3802, 100);
    //printff("Test %d", 100);
	return 0;
}
