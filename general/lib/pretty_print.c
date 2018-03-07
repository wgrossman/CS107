// Playing aorund with heaps
#include<stdlib.h>
#include<stdio.h>
#include<string.h>
#include<math.h>
#include"./pretty_print.h"

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
    unsigned int s = 0; // which suffix to use
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

#ifdef UNIT_TEST
int main(int argc, char **argv) {

    long long test_arr[] = {104, 2311, 822033, 233810384, 63318573093, 594003198573093, 91138186331987303};
    char * answers[] = {"104 B", "2.26 KB", "802.77 KB", "222.98 MB", "58.97 GB", "540.24 TB", "80.95 PB"};
    int num_tests = sizeof(test_arr)/sizeof(test_arr[0]);
    int tests_passed = 0;
    char buf[64];

    for(int test_num=0; test_num<num_tests; test_num++) {
        pretty_bytes(buf, test_arr[test_num]);
        if(strcmp(buf, answers[test_num]) == 0) tests_passed++;
    }
    
    if (tests_passed == num_tests) {
        printf("All unit tests passed for \"pretty_print.c\"\n");
    } else {
        printf("ERROR: Unit tests failed in \"pretty_print.c\"\n");
    }
    return(1);   
}
#endif

