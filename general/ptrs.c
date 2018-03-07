#include<stdlib.h>
#include<stdio.h>
#include<string.h>


void main(char argc, char* argv[]) {
	char arr[] = "string literal";
	char * arr_ptr = "ptr to string literal";
	char string_num[] = "0x8d2";
	char* err;

	printf("address of string: %p\n", string_num);
	unsigned long value = strtoul(string_num, &err, 0);
	printf("error address: %p\n", err);

	if (err!=NULL) {
		printf("error points to: %c\n", *err);
	}

	printf("Value in string is: %lu\n", value);

	int num_elm = sizeof(arr)/sizeof(arr[0]);
	printf("Size of arr: %lu\n", sizeof(arr));
	printf("Num elem in arr: %lu\n", strlen(arr));

	printf("Size of arr_ptr: %lu\n", sizeof(arr_ptr));
	printf("Num elem in arr: %lu\n", strlen(arr_ptr));

	printf("%c\n", arr[5]);
	printf("%c\n", arr_ptr[5]);
	printf("%c\n", *(arr+4));

	arr[4] = 'g';
	printf("%s\n", arr);

	arr_ptr[4] = 'h';
	printf("%s\n", arr_ptr);

}