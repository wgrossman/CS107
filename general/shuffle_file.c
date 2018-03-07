#include<stdlib.h>
#include<stdio.h>
#include<string.h>
#include<time.h>

void swap(char** arr, int indx1, int indx2) {
	char * tmp = *(arr + indx1);
	*(arr + indx1) = *(arr + indx2);
	*(arr + indx2) = tmp;
}

void fisher_yates_shuffle(char** arr, int arr_size) {
	unsigned long int a = RAND_MAX;
    for (size_t i=0; i<arr_size; i++) {
		int id1 = i;
		int id2 = i+rand()%(arr_size-i);
    	if (id1 != id2) swap(arr, id1, id2); // swap element with random later element
	}
}

int main(int argc, char** argv) {
	if (argc != 3) {
		printf("Error: improper number of args\n");
		return(1);
	}

	FILE * file_to_sort;
	char line[256];

	if ((file_to_sort = fopen(argv[1], "r")) == NULL) {
		printf("Cannot open file \n");
		return(1);
	}

	printf("Shuffling file \"%s\"\n", argv[1]);
	
	// Find length of file
	clock_t t = clock();
	long unsigned int lines = 0;
	while(fgets(line, sizeof(line), file_to_sort)) {
		lines++;
	}
	rewind(file_to_sort);

	// get memory for list
	char ** text_ptr = malloc(sizeof(char*) * lines);

	// populate this memory with strings of each line
	for (int i=0; i<lines; i++) {
		// get the next line of characters
		fgets(line, sizeof(line), file_to_sort);
		// get enough space allocated for characters of this line
		*(text_ptr+i) = malloc(strlen(line)+1);
		// copy over chars from line into the malloc'ed space
		memcpy(*(text_ptr+i), line, strlen(line)+1);
	}

	// Shuffle
	srand(time(0));
	fisher_yates_shuffle(text_ptr, lines);

	// Save to file
	FILE * shuffled = fopen(argv[2], "w");

	for (int i=0; i<lines; i++) {
		// write to file
		fprintf(shuffled, "%s", *(text_ptr+i));
	}
	// close file
	fclose(shuffled);
	
	float time_to_sort = (clock() - t)/1000.0f;
	printf("File shuffled (%lu lines) in %0.3f ms and saved as \"%s\"\n", lines, time_to_sort, argv[2]);

	fclose(file_to_sort);

	return(0);
}
