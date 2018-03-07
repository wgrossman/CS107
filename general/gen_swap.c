// Generic swapping of a list
#include<stdlib.h>
#include<stdio.h>
#include<string.h>

void ptr_swap(char * arr[], int idx_a, int idx_b) {
	// swap
	char * tmp = *(arr + idx_b);
	*(arr + idx_b) = *(arr + idx_a);
	*(arr + idx_a) = tmp;
}

void arr_swap(char * arr, int width, int idx_a, int idx_b) {
	// swap
	char tmp[width];
	memmove(tmp, arr + idx_b*width, width);
	memmove(arr + idx_b*width, arr + idx_a*width, width);
	memmove(arr + idx_a*width, tmp, width);
}

void main(char argc, char* argv[]) {
	if (argc >= 4) { 
		// perform swap
		printf("swapping argument 1 and 3\n");
		ptr_swap(argv, 1, 3);
		for(int i=0; i<argc; i++) {
			printf("%s", argv[i]);
			i==argc-1 ? printf("\n") : printf(", ");
		}
	}
	else printf("Too few arguments given for swap. Program will not perform swap on input\n");	

	int array[] = {3,5,1,19,110,129,0,99};
	int nelems = sizeof(array)/sizeof(array[0]);
	
	for(int i=0; i<nelems; i++) {
			printf("%d", array[i]);
			i==nelems-1 ? printf("\n") : printf(", ");
	}

	// swap some stuff
	arr_swap((char *)array, sizeof(array[0]), 3, 5);

	for(int i=0; i<nelems; i++) {
			printf("%d", array[i]);
			i==nelems-1 ? printf("\n") : printf(", ");
	}

}