#include<stdio.h>
#include<stdlib.h>
#include<limits.h>

void main(size_t argc, char* argv[]) {
	int val = atoi(argv[1]);
	int sn = val >> (sizeof(int)*CHAR_BIT - 1);
	printf("Abs value of %d is %u\n", val, (val ^ sn) - sn);
}
  