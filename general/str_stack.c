// Stack implementation for strings
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<stdbool.h>

typedef struct node {
	struct node * next;
	char * data;
} node;

typedef struct str_stack {
	node * top;
	size_t nelems;
} str_stack;

bool pop(str_stack * s, char * buf) {
	// Check for empty stack
	if (s->nelems == 0) return(false);
	node * node_to_pop = s->top;
	
	// Copy data to buffer
	strcpy(buf, node_to_pop->data);
	// Free data
	free(node_to_pop->data);

	// Point top to next node and decrement element counter
	s->top = node_to_pop->next;
	s->nelems--;

	// Free node_to_pop
	free(node_to_pop);
	return(true);
}

void push(str_stack * s, char * string) {
	size_t data_len = strlen(string);

	// create new node, point it's "next" to old top, and point top to it
	node * new_node = malloc(sizeof(node));
	new_node->next = s->top;
	s->top = new_node;
	// create space for new data and copy it over
	char * new_data = malloc(data_len+1);
	memcpy(new_data, string, data_len+1);
	// point new node data pointer to the new data
	new_node->data = new_data;
	// Increment node counter
	s->nelems++;
}

str_stack * create_str_stack() {
	str_stack * new_str_stack = malloc(sizeof(str_stack));
	new_str_stack->top = NULL;
	new_str_stack->nelems = 0;
	return(new_str_stack);
}

void destroy_str_stack(str_stack * s) {
	// pop everything to free
	while (s->nelems != 0) {
		char buf[25];
		pop(s, buf);
	}
	// free struct
	free(s);
}

int main(int argc, char** argv) {
	// declare a string stack, push some things, yay
	str_stack * my_str_stack = create_str_stack();

	push(my_str_stack, "!\n");
	push(my_str_stack, "World");
	push(my_str_stack, "Hello ");

	char arr[25];

	pop(my_str_stack, arr);
	printf("%s", arr);

	pop(my_str_stack, arr);
	printf("%s", arr);
	
	pop(my_str_stack, arr);
	printf("%s", arr);

	// Pop an extra time to check error handling of popping empty stack
	arr[0] = '\0';
	pop(my_str_stack, arr);
	printf("%s", arr);

	destroy_str_stack(my_str_stack);

}
