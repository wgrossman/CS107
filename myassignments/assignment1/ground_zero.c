#include<stdlib.h>
#include<stdio.h>
#include<stdbool.h>
#include<limits.h>

bool has_zero_byte(unsigned long val)
{
    unsigned long ones = ~0UL/UCHAR_MAX;
    unsigned long highs = ones << (CHAR_BIT - 1);
    return (((val - ones) & highs) & ~val) != 0;
}

int main(int argc, char** argv) {
	bool a = has_zero_byte(12345);
}
