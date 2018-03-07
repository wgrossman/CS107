// Function pointers
#include<stdlib.h>
#include<stdio.h>
#include<string.h>

int char_cmpr(const void* a, const void* b) {
	// use string compare function with proper casting
	// cast to point to pointer to char, then dereference
	return(strcmp(* (char **)a, * (char**)b));
}

int int_cmpr(const void* a, const void* b) {
	// cast to ints and take the difference
	int p1 = *(int*)a;
	int p2 = *(int*)b;

	return(*(int*) a - *(int*) b);
}

int main(int argc, char** argv) {
	// pass by program name
	argc--;
	argv++;

	// call qsort
	qsort(argv, argc, sizeof(argv[0]), char_cmpr);

	for(int i=0; i<argc; i++) {
		printf("%s", argv[i]);
		i == argc-1 ? printf("\n") : printf(", ");
	}

	int int_arr[] = {4,0,-3,2,8,10};
	int nelems = sizeof(int_arr)/sizeof(int_arr[0]);
	
	printf("Unsorted list: ");
	for(int i=0; i<nelems; i++) {
		printf("%i", *(int_arr+i));
		i == nelems-1 ? printf("\n") : printf(", ");
	}
	
	// call sorting algo
	qsort(int_arr, nelems, sizeof(int_arr[0]), int_cmpr);

	printf("Sorted list: ");
	for(int i=0; i<nelems; i++) {
		printf("%i", *(int_arr+i));
		i == nelems-1 ? printf("\n") : printf(", ");
	}

	return(1);
}