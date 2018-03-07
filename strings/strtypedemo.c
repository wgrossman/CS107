// String type demo
#include<stdlib.h>
#include<stdio.h>
#include<string.h>
#include<ctype.h>

int main(char argc, char* argv[]){
	if (argc != 2) return(0);
	char inputlen = strlen(argv[1]);
	char * input = argv[1];
	int alphnum = 0;
	
	for(char i=0; i<inputlen; i++){
		if(isalnum(input[i]))
			alphnum++;
	}

	printf("Number of alphanumeric characters: %i\n", alphnum);
}