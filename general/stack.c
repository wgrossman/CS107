#include<stdlib.h>
#include<stdio.h>

int add_double(int a, int b) {
	printf("address of a in add_double is %p and b in add_double is %p\n", &a, &b);
	return(2*a + 2*b);
}

int func1(int a, char * b) {
	return(a%(*b));
}

void swap(int* a, int* b) {
	int* tmp = a;
	*a = *b;
	*b = *tmp;
}

void main(void) {
	int a = 5, b = 10;
	printf("address of a in main is %p and b is %p\n", &a, &b);
	int m = add_double(a,b);
	printf("value of m is %d\n", m);

	int (*f_ptr)(int,char *);
	void (*void_f_ptr)(int *, int *);

	f_ptr = &func1;
	void_f_ptr = &swap;

	int v1 = 45, v2 = 33;

	(*void_f_ptr)(&v1, &v2);

	printf("v1 = %i, v2 = %i\n", v1, v2);

	if (v1 >= v2) {
		printf("function output is %i\n", (*f_ptr)(246, (char*)&m));
	}
}

