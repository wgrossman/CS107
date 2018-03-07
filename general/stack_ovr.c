#include<stdlib.h>
#include<stdio.h>

int * mult(int* a, int* b) {
	int value;
	value = *a * *b;
	return(&value);
}

void main() {
	int a = 10, b = 20;
	int* c;
	int* d;

	c = &a;
	d = &b;

	int* value_main = mult(c, d);
	printf("value: %i\n", *value_main);
}