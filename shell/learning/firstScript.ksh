#!/usr/bin/ksh

# to display the files in its parent directory
echo $(ls)

# to display the first argument
echo $1

# loading a script.properties file
chmod u+x script.properties
. ./script.properties
echo "After loading: Path = "${Path}

# connecting and querying from a MySQL database
echo "DB: ${DB}, USER: ${DBUSER}, PWD: ${PD}"
mysql --login-path=local<<EOFMYSQL
use springboot;
show tables;
select * from workshops;
EOFMYSQL

# using variables
state="Maharashtra"
echo ${state}

# arrays
arr=[]
arr[0]=0
arr[1]=2
arr[2]=3
echo ${arr[0]} # specific element
echo ${arr[*]} # all elements
echo ${#arr[@]} # array length

# if else
if [[ ${state} = "Karnataka" ]]; then
    echo "Welcome to Karnataka"
elif [[ ${state} = "Maharashtra" ]]; then
    echo "Welcome to Maharashtra"
else
    echo "Ok! Welcome to ${state}"
fi

# case esac
case ${state} in
   "Karnataka") echo "Bengaluru";;
   "Maharashtra") echo "Mumbai";;
   *) echo "No info...";;
esac

# while do done loop
count=5
echo "start of while loop"
while [[ ${count} -gt 0 ]];do
   echo "${count}"
   (( count -= 1 ))
done
echo "end of while loop"

# until do done loop
echo "start of while do done loop"
until [[ ${count} = 5 ]];do
   echo "${count}"
   (( count += 1 ))
done
echo "end of while do done loop"

# for loop
echo "start of for loop"
for i in ${arr[*]};do
   echo ${i}
done
echo "end of for loop"

# continue...break
echo "start of while loop with continue"
while [[ ${count} -gt 0 ]]
do
   (( count -= 1 ))
   if [[ ${count} -eq 3 ]];then
      continue
   else
      echo ${count}
   fi
done
echo "end of while loop with continue"
echo "start of while loop with break"
while [[ ${count} -lt 5 ]]
do
   (( count += 1 ))
   if [[ ${count} -eq 3 ]];then
      break
   else
      echo ${count}
   fi
done
echo "end of while loop with break"

# command line arguments
if [[ $# -eq 0 ]];then
    echo "No Arguments"
else 
    echo "You provided "${#}" arguments: ${*}"
fi
for arg;do
   echo ${arg}
done

# comparison
score=91
if [[ ${score} -eq 90 || ${score} -gt 90 && ${score} -lt 96 ]];then
    echo "A grade"
fi

# variable manipulation
temp=${Path}
echo "Full path: "${temp}
echo "File name: "${temp##*/}
echo "Path upto file name: "${temp%/*}
# unset
echo ${foo:-4}
echo "Unset foo: "${foo}
# set
echo ${foo:=4}
echo "Set foo: "${foo}

# regular expressions
s1="shrinidhi99.varna@gmail.com"
if [[ ${s1} = +([a-z0-9])@([.])+([a-z0-9])@([@])+([a-z])@([.])+([a-z]) ]];then
    echo "string: ${s1} matches the pattern for an email" 
fi

# functions
function f1 {
   echo "Entering f1"
   echo "Arguments passed: ${*}"
   if [[ ${#} < 1 ]];then
   echo "You haven't provided any argument. Hence exiting early from the function..."
   return
   fi
   echo "Exiting f1"
}

f1 a b
f1

# Data redirection
echo "New file -->" > file.txt
echo "Appending to the same file -->" >> file.txt
echo "Banana" >> file.txt
echo "Apple" >> file.txt
echo "error output redirection " 2>file-err.txt
echo "error output redirection to the same file as normal output " 2>&1
echo "Input: " < file.txt

# pipes
cat file.txt | more
echo "---"
cat file.txt | grep Apple
echo "---end of pipes---"

# grep
# -i: Ignores, case for matching
cat file.txt | grep -i a
echo "---"
# -v : This prints out all the lines that do not matches the pattern
cat file.txt | grep -v A
echo "---end of grep---"

# sort
sort file.txt
echo "---"
sort -r file.txt
echo "---"
cat file.txt | grep -i a | sort -r
echo "---end of sort---"

# Read Input from User and from Files
echo "Enter something: "
read var
echo "You entered: ${var}"
echo "Reading a file"
{ while read myline;do
   echo ${myline}
done } < file.txt

# special variables
echo "#: Number of arguments on commandline: ${#}"
echo "#: Exit status of last command: ${?}"
echo "#: Process id of current program: ${$}"
echo "#: Process id of last background job or background function: ${!}"
echo "#: Program name including the path if started from another directory: ${0}"
echo "#: Commandline arguments, each at a time: ${1}"
echo "#: All commandline arguments in one string: ${*}"

# sed
sed 's/Apple/orange/g' file.txt > file2.txt