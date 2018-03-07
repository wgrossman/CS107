#include<stdlib.h>
#include<stdio.h>
#include<string.h>
#include<time.h>


int char_cmpr(const void* a, const void* b) {
	// use string compare function with proper casting
	// cast to point to pointer to char, then dereference
	return(strcmp(* (char **)a, * (char**)b));
}

size_t count_lines(FILE * f) {
	fpos_t current_pos;
	size_t lines = 0;
	char line[256];
	// Remember current position
	fgetpos(f, &current_pos);
	// Go to beginning
	fseek(f, 0, SEEK_SET);

	while(fgets(line, sizeof(line), f)) {
		lines++;
	}
	// Set position of file reader back to where it was
	fsetpos(f, &current_pos);
	return(lines);
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

	printf("Sorting file \"%s\"\n", argv[1]);
	
	// Find length of file
	clock_t t = clock();

	size_t lines = count_lines(file_to_sort);

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

	// Close file
	fclose(file_to_sort);

	// all words are now on the heap, let's go sorting!
	qsort(text_ptr, lines, sizeof(char*), char_cmpr);
	
	// Save to file
	FILE * shuffled = fopen(argv[2], "w");

	for (int i=0; i<lines; i++) {
		// write to file
		fprintf(shuffled, "%s", *(text_ptr+i));
	}
	// close file
	fclose(shuffled);

	// free memory
	for (int i=0; i<lines; i++) {
		free(*(text_ptr+i));
	}
	free(text_ptr);


	float time_to_sort = (clock() - t)/1000.0f;
	printf("File contained %lu lines, sorted in %0.3f ms, and saved to \"%s\"\n", lines, time_to_sort, argv[2]);

	return(0);
}
