#include<stdlib.h>
#include<stdio.h>
#include<string.h>


void alphabetize(size_t list_size, char ** list);

void main(int argc, char **argv) {

	if (argc == 1) {
		// no input, run unit tests
		char * list[10] = {"twelve", "one", "happy", "zebra", "weapon", "diligent", "abrest", "dangerous", "shameful", "candid"};
		char * list_sorted[10] = {"candid", "one", "happy", "zebra", "weapon", "diligent", "abrest", "dangerous", "shameful", "candid"};
		int nelems = 10;
		char list2[10][20] = {"twelve", "one", "happy", "zebra", "weapon", "diligent", "abrest", "dangerous", "shameful", "candid"};
		

		alphabetize(nelems, list2);

		printf("Sorted wordsdf: \n");
		// reprint in char to see
		for (int i=0; i<nelems; i++) {
			printf("%s", list[i]);
			(i == nelems-1) ? printf("\n") : printf(", ");
		}

	} else {
		// sort the list given

		int num_words = argc-1;
		int max_len = 0;

		for (int i=1; i<argc; i++) {
			// Find longest string
			int m = strlen(*(argv+i));
			if (m > max_len) {
				max_len = m;
			}
		}
		max_len++; // for null termination

		printf("Number of words to be sorted: %i\n", max_len-1);

		char list[num_words][max_len];
	
		// Copy over input
		for (int i=1; i<argc; i++) {
			// fill list
			strcpy(list[i-1], *(argv+i));
		}

		alphabetize(num_words, list);

		printf("Sorted words: \n");
		// reprint in char to see
		for (int i=0; i<num_words; i++) {
			printf("%s", list[i]);
			(i == num_words-1) ? printf("\n") : printf(", ");
		}

	}
}

void alphabetize(size_t list_size, char * list[]) {
	// Sort list
	char temp[30];
	for (int i=0; i<list_size; i++) {
		for (int j=i+1; j<list_size; j++) {
			if (strcmp(list[i], list[j]) > 0) {
				// if positive, then swap
				strcpy(temp, list[i]);
				strcpy(list[i], list[j]);
				strcpy(list[j], temp);
			}
		}
	}
}

