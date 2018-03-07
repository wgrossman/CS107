// Simple
#include<stdio.h>
#include<stdlib.h>

void passlist(char **array, size_t size);

void main(size_t argc, char** argv) {

	const char c = 'x';    /* 1 */
	char *p1;              /* 2 */
	const char **p2 = &p1; /* 3 */
	*p2 = &c;              /* 4 */
	*p1 = 'X';             /* 5 */
	
	char* list[10] = {"twelve", "one", "happy", "zebra", "weapon", "diligent", "abrest", "dangerous", "shameful", "candid"};
	char* list_solution[10] = {"abrest", "candid", "happy", "zebra", "weapon", "diligent", "abrest", "dangerous", "shameful", "candid"};
	char L1[5][10] = {"henry", "jane", "george", "sally"};

	passlist(list, 10);

	printf("%lu\n", sizeof(list));
	printf("list[0][0] = %c\n", list[0][0]);
	printf("first string in list = %s\n", list[0]);
	printf("second string in list = %s\n", *(list+1));

};

void passlist(char **array, size_t size) {
	// print array
	for(int i=0; i<size; i++) {
		printf("%s", *(array+i));
		(i== size-1) ? printf("\n") : printf(", ");
	}
}