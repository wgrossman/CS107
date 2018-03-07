#include<stdlib.h>
#include<stdio.h>

void main(void) {
	// Play with condition codes in assy

	// Equal comparison --> Zero Flag (ZF)
	char a = 6;
	char b = 5;
	if (a == b) {
		printf("a equal to b\n");
	}
	b++;

	if (a == b) {
		printf("a equal to b\n");
	}

	// Unsigned overflow --> Carry Flag (CF)
	unsigned char m = 255;
	m++;

	// Signed overflow
	char c = -4;

	if (c <= 0) {
		printf("c is less than 0\n");
	}
}