#!/usr/bin/ksh

# redirection in linux
ls -al > listings

# redirecting error message into a file
telnet localhost 2> errorfile

# redirecting both standard and error outputs to a file
ls ../learning/ ABC > dirlist 2>&1

# regular expressions
# words containing 'a'
cat test1.txt | grep a
echo "---"
# words starting with 'S'
cat test1.txt | grep ^S
echo "---"
# words ending with 'n'
cat test2.txt | grep n$
echo "---"
# words containing 'a' twice
cat test2.txt | grep -E a\{2}
# extended regular expressions
cat test2.txt | grep "a\+n"
