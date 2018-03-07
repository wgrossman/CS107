#include<stdlib.h>
#include<stdio.h>
#include "linkedlist.h"

struct node* fibonacci(struct node* list, int value) {
	int current_depth = 0;
	while(ListTail(list) < value) {
		// keep appending

		if (LengthList(list) < 2) {
			list = AppendList(list, 1);
			current_depth = 2;
		} else {
			int data1;
			int data2;

			ReturnData(list, current_depth-2, &data1);
			ReturnData(list, current_depth-1, &data2);

			list = AppendList(list, data1 + data2);
		}
	}
	return(list);
}

void main(char argc, char* argv[]) {
	struct node* mylist;
	int i;
	if (argc == 2) {
		i = atoi(argv[1]);

		mylist = fibonacci(mylist, i);

		PrintList(mylist);
	}
}