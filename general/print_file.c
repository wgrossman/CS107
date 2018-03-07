#include<stdlib.h>
#include<stdio.h>

int main(int argc, char** argv) {
	if (argc != 2) {
		printf("Error: improper number of args\n");
		return(1);
}

	FILE * fp;
	char line[256];

	if ((fp = fopen(argv[1], "r"))==NULL) {
		printf("Cannot open file \n");
		return(1);
	}

	printf("Printing file \"%s\"\n\n", argv[1]);
	// file is opened, start printing
	while(fgets(line, sizeof(line), fp)) {
		printf("%s", line);
	}

	printf("\n");

	fclose(fp);

	return(0);
}
