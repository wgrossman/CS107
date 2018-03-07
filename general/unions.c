#include<stdlib.h>
#include<stdio.h>

void main() {
	union {
		double d;
		long li;
	} firstU;

	double myD = 1.2345;
	firstU.d = myD;

	printf("Value of double = %f, hex value = %x\n", myD, myD);
	printf("Value of interpreted double = %li\n", firstU.li);
}