#include<stdio.h>

void main(){
	char* pointer_to_char;
	void* pointer_void_star;
	char c = -127;

	printf("Void star: %p, addr: %p, value of pointee: %i\n", pointer_void_star, &pointer_void_star, * (unsigned int *)pointer_void_star);
	printf("Addr: %p, pointee: %p, value: %x\n", &pointer_to_char, pointer_to_char, *pointer_to_char);
	pointer_to_char = &c;
	printf("Addr: %p, pointee: %p, value: %d\n", &pointer_to_char, pointer_to_char, * (unsigned char *)pointer_to_char);

	// char A[3][2];
	// A[0][0] = 100;
	// A[1][0] = 110;
	// A[2][0] = 120;

	// printf("Address of A is: %p, value at A is %i\n", &(A[0]), **A);
	// printf("Address of A[1] is: %p, value at A[1] is %i\n", &(A[1]), *A[1]);
	// printf("Address of A[2] is: %p, value at A[2] is %i\n", &(A[2]), *A[2]);
	// printf("Address of A[2][1] is %p\n", &A[2][1]);
	// printf("*A+1:%i\n", A[]);

}