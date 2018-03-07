// Pointer arithmetic
#include<stdlib.h>
#include<stdio.h>

void main(void) {
	// Main
	int a = 1;
	int b = 2;

	int * ptr_a = &a;
	int * ptr_b = &b;

	printf("Adress of a is %p, value of a is %i\n", ptr_a, a);
	printf("Adress of b is %p, value of b is %i\n", ptr_b, b);

	void * c = &a;
	void * d = &b;

	printf("Abs(c-d) = %lu\n", (d>c) ? (d-c) : (c-d));
	printf("(int*)d - (int*)c = %lu\n", (int*)d - (int*)c);
	printf("(char*)d - (char*)c = %lu\n", (char*)d - (char*)c);
	printf("(char*)d - (int*)c = %lu\n", (char*)d - (int*)c);	

}
