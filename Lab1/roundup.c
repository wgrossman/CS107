#include<stdio.h>
#include<stdlib.h>

void main(size_t argc, char* argv[]) {
	// convert inputs to numbers then apply roundup function
	size_t sz = atoi(argv[1]);
	size_t mult = atoi(argv[2]);

	printf("Round %lu to a multiple of %lu: %lu\n", sz, mult, (sz + mult - 1) & ~(mult -1) );
}