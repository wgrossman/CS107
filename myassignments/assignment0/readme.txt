----------------------
File: readme.txt
Assignment: assign0 Scavenger Hunt
Author: William Grossman
----------------------

----------------------
QUESTION: Describe three of the most useful things you've learned 
to do in UNIX. Write one sentence for each. Write as though you're 
trying to sell a classmate on the utility of learning this particular 
command/trick/tip.
ANSWER:
ls -alH lists all the contents of a directory in long format with human readable sizes. Super useful just about all the time
cd Changing directories. Needed pretty much all the time
mv ./a ./b move stuff from one place to another

----------------------
QUESTION: Describe three of the most useful things you've learned 
to do in your editor of choice (either vim or emacs--you don't need
to write about both vim and emacs). Write one sentence for each useful
thing you learned. Write as though you're trying to sell a classmate 
on the utility of learning this particular command/trick/tip.
ANSWER:
I don't use VIm or emacs. I use sublime.


----------------------
QUESTION: According to CS107's Collaboration and Honor Code Policy on 
the course website (see link in the assign0 webpage), is helping 
another student debug their code by listening to them verbally describe 
the symptoms and then making suggestions: (A) Assistance that is` allowed 
and requires no citation, (B) Assistance that is allowed but must be 
cited, or (C) Assistance that is NOT allowed? (write letter choice below)
ANSWER: B

----------------------
QUESTION: How many times did the number "111" occur?
ANSWER: 

----------------------
QUESTION: What is the username of the intruder?
ANSWER: mvaska

diff -c trusted.list trusted.bak.305

----------------------
QUESTION: What is the date/time when the trusted.list file was changed?
ANSWER: 2017-10-15 18:22:18.000000000 -0700

stat --printf=%y\\n trusted.list

----------------------
QUESTION: List the names of the programs in the server_image_91107/bin/ 
directory that appear (based on timestamp) to have been edited by the
intruder. 
ANSWER:

stat --printf="%y %n\n" $(ls)

----------------------
QUESTION: List the usernames of the all the users whose init.d files 
appear to have been compromised by the intruder.
ANSWER: 

grep -r 'baash\|rkit\|shellh'

woolerduty/init.d:baash | rkit
fennelturnips/init.d:baash
yangoncurrency/init.d:rkit
observantben/init.d:baash
unfastencutter/init.d:said ${ski -nk} | rkit
poundreflect/init.d:shellh

----------------------


































































































































































































































































































































































































































































































In the directory unixhunt/nums, there are two files full of numbers. Take a moment to look at the first and last few lines (using the Unix 'head' and 'tail' commands, respectively) to see for yourself (e.g., "head -20 nums1.txt").

The two files are identical except for the presence of one additional line in one that is not in the other. Find this line that is in one file and not the other and remember what number is written on that line (not the line number of the file, but the what is written there, which is a number). We'll call that number X. Now open the m_map.txt file that is in your cloned assign0 directory (alongside this readme.txt file), and write "I solemnly swear that I am up to no good" on line number X of that file. You should use your editor "protip" tricks to jump directly to line number X!

*Note*: When you submit your m_map.txt for grading, this text should be on line number X exactly, so double-check before submitting that you left it exactly there. 

Count how many times the number 111 occurs in the nums1.txt file. Write that number in response to the appropriate question above in this readme.txt file.

NOW RETURN TO THE ASSIGN0 WEB PAGE FOR INSTRUCTIONS ON THE NEXT ACTIVITY (intruder detection)!

