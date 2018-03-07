#include<stdlib.h>
#include<stdio.h>
#include<string.h>

void swap(char ** str1, char ** str2) {
	// swap strings
	char * temp = *str1;
	*str1 = *str2;
	*str2 = temp;
}

void main(size_t argc, char** argv){
	// send two strings
	char* stra = {"Hello"};
	char* strb = {"World!"};

	printf("%s %s\n", stra, strb);

	swap(&stra, &strb);

	printf("%s %s\n", stra, strb);
}