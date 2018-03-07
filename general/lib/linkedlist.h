// Header file

struct node {
	int data;
	struct node* next;
} node;

struct node * AppendList(struct node* head, int new_data);

struct node * BuildOneTwoThreeList();

struct node * PushList(struct node* head, int value);

int ListTail(struct node* head);

void PrintList(struct node* head);

unsigned int LengthList(struct node* head);

int ReturnData(struct node* head, int index, int *data);

int FreeList(struct node* head);

int CountList(struct node* head, int i);