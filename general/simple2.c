#include<stdio.h>
#include<stdlib.h>

static void func(char * p[]) {
	p[0] = "Hello there again, so night to see you on this fine night... ";
	p[1] = "world again were it too long for a long night to come.";
	char mem[] = {"abcdefg"};
	p[2] = mem;

}

int main(int argc, char* argv[]) {
	char * strings[3];
	func(strings);
	printf("%s, %s, %s\n", strings[0], strings[1], strings[2]);
	printf("%c", *(*strings + 4));
	*(*strings+4) = "h";
	return 0;
}