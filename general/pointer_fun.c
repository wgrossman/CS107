#include<stdio.h>
#include<stdlib.h>
#include<time.h>

// call this function to start a nanosecond-resolution timer
struct timespec timer_start(){
    struct timespec start_time;
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &start_time);
    return start_time;
}

// call this function to end a timer, returning nanoseconds elapsed as a long
long timer_end(struct timespec start_time){
    struct timespec end_time;
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &end_time);
    long diffInNanos = end_time.tv_nsec - start_time.tv_nsec;
    return diffInNanos;
}


void main () {
	int i = 100000;
	int j = 50;
	struct timespec s_time;
	long nanos;

	srand(time(NULL));
	s_time = timer_start();

	char * p = (char *)malloc(i*sizeof(char));
	printf("Time in nanos: %lu\n", timer_end(s_time));

	for (int j = 0; j<i; j++) {
		p[j] = rand() % 256;
	}
	
	printf("Time in nanos: %lu\n", timer_end(s_time));
	nanos = timer_end(s_time);;

	printf("Time in nanos: %lu\n", timer_end(s_time));
	printf("%s\n", p);
	free(p);

}