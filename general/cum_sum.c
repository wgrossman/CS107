// Cumulative sum
#include<stdio.h>
#include<stdlib.h>
#include<string.h>

long long unsigned int cumulative_sum_recursive(long long unsigned int value) {
	// Recurse until value == 1
	if (value == 1) {
		return(1);
	} else {
		return(cumulative_sum_recursive(value - 1) + value);
	}
}

long long unsigned int cumulative_sum(long long unsigned int value) {
	long long unsigned int sum = value;
	while(value--) {
		sum += value;
	}
	return(sum);
}

int main(int argc, char** argv) {
	char* endptr = 0;
	long long unsigned int number = strtoll(argv[1], &endptr, 0);
	printf("Finding cumulative sum for %llu\n", number);
	printf("Cumulative sum using while loop %llu\n", cumulative_sum(number));
	printf("Cumulative sum using recursion %llu\n", cumulative_sum_recursive(number));
	return(1);
}