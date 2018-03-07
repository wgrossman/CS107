#include<stdlib.h>
#include<stdio.h>
#include<limits.h>

int mid_A(int low, int high)
	{
	    return low + ((high - low) / 2);
	}

int mid_B(int low, int high)
	{
	    return ((unsigned int)low + (unsigned int)high) >> 1;
	}

int mid_C(int low, int high)
	{
	    return (low & high) + ((low ^ high) >> 1);
	}


int main(int argc, char** argv) {

	char a = CHAR_MAX;
	char b = CHAR_MIN;
	unsigned char c = CHAR_MAX;
	unsigned char d = CHAR_MIN;
	unsigned char e = -1;

	printf("LMIN: %li\n", LONG_MIN);
	printf("LMAX: %li\n", LONG_MAX);
	printf("LUMAX: %lu\n", ULONG_MAX);

	// Cause mid_A to fault by underflowing INT_MIN
	printf("mid_A (INT_MAX - INT_MIN) should be 0, but is in fact %i\n", mid_A(INT_MAX, INT_MIN));

	printf("(unsigned int) INT_MAX: %u, (unsigned int) INT_MIN: %u\n", (unsigned int)INT_MAX, (unsigned int)INT_MIN);

	printf("(unsigned char)CHAR_MAX: %u, (unsigned char)CHAR_MIN: %u\n", (unsigned char)CHAR_MAX, (unsigned char)CHAR_MIN);
	printf("(unsigned char)CHAR_MAX: %u, (unsigned char)CHAR_MIN: %u\n", (unsigned char)CHAR_MAX, (unsigned char)CHAR_MIN);
	// Cause mid_B to fault
	//int mid_value = mid_B()

	return(1);
}