#include<stdio.h>
#include<stdlib.h>

void random_change(char *);

void random_change(char * ptr) {
	int i;
	i = *(char *)ptr % 10;
	*ptr = i;
}

void main(){
	unsigned char iterations = 0;
	unsigned char value;

	value = 3;

	// call a subrountine
	while(value < 10) {
		iterations++;
		value++;
		random_change(&value);
		printf("value = %d\n", value);
	}
}