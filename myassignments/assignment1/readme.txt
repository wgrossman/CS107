# Readme.txt

---------------------
Question 1 (power of two)
#define powerof2(x)     ((((x) - 1) & (x)) == 0)

a) First just consider positive numbers. Jot down the binary representation for the first few powers of 2 (e.g. 1, 2, 4, 8, ...) and compare to the binary representations of non-powers such as 5 and 14. What property of the bit pattern of an unsigned int holds true if and only if the value is an exact power of two?

0b00010 (2)
0b00100 (4)
0b01000 (8)
0b10000 (16)

There is a single 1 followed by only zeros

b) There is exactly one negative signed int in two's-complement representation which has the above property. What value is it?

0b100000000000000000000000000000000 (-4294967296)

c) Briefly explain the bitwise/numeric mechanism by which powerof2 detects an exact power of two.

You need a "1" to be present in the bit spot of the power of two of the initial value when 1 is subtracted. If you have all zeros as you would for a power of two, then the bits all flip over to one and keep carrying all the way to the leading one, resulting in zero at that exact spot. This is what leads to the final value == 0.

If there is another "1" after the leading 1, then the bit carrying is broken somewhere and that critical 1 in the farthest left spot doesn't get flipped, and consequently the resultant ands to not 0, so the return value is false

d) What is the result from powerof2 when evaluated on the negative value from your answer to (b)?

true


a. Both mid_A and mid_B work correctly as long as both inputs are non-negative. This constraint is never clearly stated, just implicit in the original context that low and high are array indexes. Things may not be quite so rosy if one or both inputs is negative. Unambiguously identify in which situations a negative input causes trouble for mid_A and demonstrate with a specific call that returns an incorrect result.

b. mid_B also has its own problem with negative inputs. Unambiguously identify in which situations negative inputs are trouble for mid_B and demonstrate with a specific call that returns an incorrect result.

c. Knuth's mid_C is the real deal, correct result for all inputs, no possibility of overflow! How this approach works is not at all obvious as first glance, so invest some quality time to work through the bitwise manipulation and integer representation until you see how it all fits together. Hint: consider the bitwise representation and its relationship to a binary polynomial/powers of 2. Once you have it figured out, write a short explanation of how and why it works. Your answer may focus solely on the case where both inputs are non-negative inputs. (While it is possible to generalize to the case when one or more inputs is negative, it is trickier to reason about.)


