#include<stdio.h>
#include<stdlib.h>
#include"./lib/pretty_print.h"
#include"./lib/linkedlist.h"

int main(int argc, char** argv) {
	// create list, add elements, pretty print elements
	struct node * myList = NULL;

	myList = AppendList(myList, 10239);
	myList = PushList(myList, -29918);
	myList = AppendList(myList, 9209);
	myList = AppendList(myList, 39);

	for(int i=0; i<LengthList(myList); i++) {
		int data;
		char buf[32];
		ReturnData(myList, i, &data);
		pretty_bytes(buf, data);
		printf("Element %i contains %s\n", i, buf);
	}
}
