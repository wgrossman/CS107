#include<stdio.h>
#include<stdlib.h>
#include "linkedlist.h"

struct node * AppendList(struct node* head, int new_data) {

	if (head == NULL) {
		// No nodes in the list yet, add data to head node
		head = malloc(sizeof(struct node));
		head->data = new_data;
		head->next = NULL;
	} else {
		// There is at least one piece of data
		struct node* current_node = head;
		
		// Find end of list and append data
		while(current_node->next != NULL) {
			// move through the list to find the end
			current_node = current_node->next;
		}
		// current_node is the end, so append to that
		current_node->next = malloc(sizeof(struct node));
		current_node->next->next = NULL;
		current_node->next->data = new_data;
	}
	return(head);
}

struct node * BuildOneTwoThreeList(){
	// Build a linked list of three nodes
	struct node* head = NULL;
	
	// Append nodes
	head = AppendList(head, 1);
	head = AppendList(head, 2);
	head = AppendList(head, 3);

	// Return pointer to head node
	return(head);
}

struct node * PushList(struct node* head, int value) {
	struct node* new_head = malloc(sizeof(struct node));
	new_head->data = value;
	new_head->next = head;
	return(new_head);
}

void PrintList(struct node* head) {
	struct node* current_node = head;

	if (current_node == NULL) {
		// Empty list
	} else {
		while(current_node->next != NULL) {
			printf("%i ", current_node->data);
			current_node = current_node->next;
		}
		printf("%i ", current_node->data);
	}
}

unsigned int LengthList(struct node* head) {
	// Return length of linked list
	// Count up until you reach a null pointer
	unsigned int current_depth = 1;
	struct node* current_node = head;

	if (current_node == NULL) {
		return(0);
	}

	while(current_node->next != NULL) {
		current_node = current_node->next;
		current_depth++;
	}
	return(current_depth);
}

int ReturnData(struct node* head, int index, int* data) {
	// find the value at the index
	if (head == NULL){
		// Empty list
		return(0);
	} else if (index >= LengthList(head)) {
		// Error
		return(0);
	} else {
		struct node* current_node = head;
		int current_depth = 0;
		while (current_depth < index) {
			current_node = current_node->next;
			current_depth++;
		}
		// curent_depth == index, grab data
		*data = current_node->data;
		// Success
		return(1);
	}
}

int ListTail(struct node* head) {
	// Find tail node
	struct node* current_node = head;

	if (current_node == NULL) {
		return(0);
	}

	while (current_node->next != NULL) {
		current_node = current_node->next;
	}
	return(current_node->data);
}

int FreeList(struct node* head){
	struct node* current_node = head;
	struct node* node_to_free;
	
	if (current_node == NULL) {
		return(0);
	}
	
	while(current_node->next != NULL) {
		node_to_free = current_node;
		current_node = current_node->next;
		free(node_to_free);
	}
	free(head);
	return(1);
}

int CountList(struct node* head, int i) {
	// Count number of times i is in list
	// Traverse list once and increment every time you match i
	int count = 0;
	struct node* current_node = head;

	if (current_node == NULL) {
		// No elements in list
		return(0);
	}

	while(current_node->next != NULL) {
		if (current_node->data == i) {
			count++;
 		}
		current_node = current_node->next;
	}
	// Catch the last value
	if (current_node->data == i) {
		count++;
	}
	return(count);
}

#ifdef UNIT_TEST
int main(int argc, char** argv) {
	struct node * myList = NULL;
	int count;
	int match = 2;

	printf("Length of list is %i\n", LengthList(myList));

	// Problem 1
	myList = BuildOneTwoThreeList();
	printf("Length of list is %i\n", LengthList(myList));
	printf("last value in list is %i\n", ListTail(myList));

	myList = PushList(myList, 10);
	printf("Length of list is %i\n", LengthList(myList));
	printf("last value in list is %i\n", ListTail(myList));

	myList = AppendList(myList, 9);
	printf("Length of list is %i\n", LengthList(myList));
	printf("last value in list is %i\n", ListTail(myList));

	int index = 0;
	int data;

	ReturnData(myList, index, &data);
	printf("Index #%i has data: %i\n", index, data);

	index = 3;
	ReturnData(myList, index, &data);
	printf("Index #%i has data: %i\n", index, data);

	index = 4;
	ReturnData(myList, index, &data);
	printf("Index #%i has data: %i\n", index, data);

	index = 5;
	if (ReturnData(myList, index, &data)) {
		printf("Index #%i has data: %i\n", index, data);
	}

 	count = CountList(myList, match);
	printf("\"%i\" found %i times\n", match, count);
	return(1);
}
#endif