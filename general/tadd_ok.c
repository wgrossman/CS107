#include<stdio.h>
#include<stdlib.h>

void main(size_t argc, char** argv){

	// breakout args
	if (argc == 3) {
		int val1 = atoi(argv[1]);
		int val2 = atoi(argv[2]);

		// val1 = -2147483648;
		// val2 = 2147483647;		printf("L0: %u\n", (val1 >> 31) & (val2 >> 31));
		printf()
		printf("%u\n", ((val1 ^ val2) >> 31));
		printf()

	} else {
		printf("Error: Function needs two valid integers as inputs");
	}
}
