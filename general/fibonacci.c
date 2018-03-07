#include<stdio.h>

int list[1000];
static int depth = 0;

void fibonnaci(int limit, int current) {
	if (current >= limit) {
		// done
	} else {
		// recurse
		list[current++] = list[current-1] + list[current];
		fibonnaci(limit, currnt++);
	}
}

void main(int argc, char argv[]) {
	list[0] = 1;
	list[1] = 1;
	fibonnaci(25, 1)
	printf("Fibonacci sequence: %s\n", fibonnaci(argv[1]));
}