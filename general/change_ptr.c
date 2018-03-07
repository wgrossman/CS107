// Changing aronud pointers
#include<stdlib.h>
#include<stdio.h>
#include<string.h>

void change_char(char * s) {
	*s = 'j';
	s = "Leland";
}

void change_ptr(char ** p_str) {
	**p_str = 'm';
	*p_str = "Stanford";
	p_str = NULL;
}

void main(char argc, char** argv) {
	char word[6];
	char * pw = word;
	strcpy(word, "hello");

	change_char(pw);
	change_ptr(&pw);
}