// Playing aorund with heaps
#include<stdlib.h>
#include<stdio.h>
#include<string.h>
#include<math.h>
#include<time.h>

// Prints to the provided buffer a nice number of bytes (KB, MB, GB, etc)
void pretty_bytes(char* buf, size_t bytes)
{
    const char* suffixes[7];
    suffixes[0] = "B";
    suffixes[1] = "KB";
    suffixes[2] = "MB";
    suffixes[3] = "GB";
    suffixes[4] = "TB";
    suffixes[5] = "PB";
    suffixes[6] = "EB";
    uint s = 0; // which suffix to use
    double count = bytes;
    while (count >= 1024 && s < 6)
    {
        s++;
        count /= 1024;
    }
    if (count - floor(count) == 0.0)
        sprintf(buf, "%d %s", (int)count, suffixes[s]);
    else
        sprintf(buf, "%.2f %s", count, suffixes[s]);
}

void main(size_t argc, char** argv) {
	char * endptr;
	long unsigned int mem_size = strtoul(argv[1], &endptr, 0);
	char buf[20];
	pretty_bytes(buf, mem_size);
	clock_t t = clock();

	printf("Requesting %s of memory from heap\n", buf);
	char * heap_mem = malloc(mem_size);

	if (heap_mem != NULL){
		printf("Memory successfully requested, beginning address: %p\n", heap_mem);
		for (unsigned long i=0; i<mem_size; i++) {
			*(heap_mem + i) = i%250;
		}
		printf("Calculation took %f seconds\n", (double)(clock()-t)/CLOCKS_PER_SEC);
		free(heap_mem);
	}
	else 
		printf("Error: Not able to get memory allocated\n");
}
