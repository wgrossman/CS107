#include<stdio.h>

void main(){
	// two D array
	int B[3][4];
	int * C[3];
	int** D;

	D = B;

	B[2][3] = 23;
	B[1][2]	= 12;
	B[0][0] = 310818200;
	B[0][1] = 1;
	B[1][0] = 10;

	// Address of B[0][0], value of B[0][0]
	printf("Address of B: %p, value at B[0][0]: %p\n", &B, *B);
	printf("Address of B+1: %p, value at B+1: %i\n", *(B+1), **(B+1));


	printf("Address of B[0][0]: %p, value at B[0][0]: %i\n", &(B[0][0]), B[0][0]);
	printf("Address of B[0][0]: %p, value at B[0][0]: 0x%04x\n\n", *B, **B);

	printf("Address of B[0][1]: %p, value at B[0][0]: 0x%04x\n\n", &B[0][1], *(*B+1));
	printf("Address of B[0][1]: %p, value at B[0][0]: 0x%04x\n\n", *B, **B);

	printf("%p\n", &B); // address of pointer that holds the address of B
	printf("%p\n", *B); // address of main B
	printf("%i\n", **B); //
	printf("%p\n", *B + 1); // pointer to B[0][1]
	printf("%i\n", *(*B+1)); // B[0][1]
	printf("%i\n", *(*(B+1))); // B[1][0]
	printf("%p\n", *(B+2)+3); // pointer to B[2][3]

}