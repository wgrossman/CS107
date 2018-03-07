#include<stdio.h>

void Swap(int* a, int* b){
	int tmp = *a;
	*a = *b;
	*b = tmp;
}

void main(void) {
	int i = 101;
	int j = 202;
	printf("%i, %i\n", i, j);
	Swap(&i, &j);
	printf("%i, %i\n", i, j);
}
