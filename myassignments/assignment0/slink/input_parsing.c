// Correctly parse input string to long int
#include<stdlib.h>
#include<stdio.h>
#include<string.h>
#include<error.h>
#include<errno.h>
#include<limits.h>

int main(int argc, char** argv) {
	if (argc != 2) {
		printf("Error: Please enter a single number as the input argument\n");
		return(0);
	}

	errno = 0;
	char * endptr = '\0';
	long int input = strtol(argv[1], &endptr, 0);

	// Check for errors
	if ((errno == ERANGE) && (input == LONG_MAX || input == LONG_MIN)) {
		// input overflow or underflow
		printf("Error: Input value too large\n");
		return(0);
	} else if (errno != 0 && input == 0) {
		printf("Error: Input value not a valid number\n");
		return(0);
	}

	if (endptr == argv[1]) {
		printf("Error: No integer found in input string\n");
		return(0);
	}

	// If you've gotten here, it must be a valid number
	printf("strtol parsed \"%s\" to %li\n", argv[1], input);
	if (endptr != '\0') printf("Further characters after number were \"%s\"\n", endptr);
	
	return(1);
}