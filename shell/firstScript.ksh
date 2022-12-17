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