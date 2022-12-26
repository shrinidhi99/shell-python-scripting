# to view the current directory
pwd
# creating a directory
mkdir testdir
# viewing the directory
ls
# navigating into that directory
cd testdir
# creating a file in a directory
touch test-file.txt
# opening the test file
vi test-file.txt
# copy of a file
cp test-file.txt copy_test-file.txt
# move/renaming a file
mv test-file.txt orig_file.txt
# delete a file
rm copy_test-file.txt
# to get options for a given command, say, cp
man cp
# copy a file directory structure from one directory to another (note that both the directories exist before executing this command)
cp -R testdir/ copydir/
# renaming/move a directory
mv testdir origdir
# removing a directory
rm -R copydir

# find command
# to find all the files in the directory
find .
# find inside a particular directory, say website
find website
# find all the directories but no files
find . -type d
# find all the files but no directory
find . -type f
# finding a particular file inside the current directory
find . -type f -name "mongo-db.sh"
# finding all files starting with a pattern inside the current directory (case sensitive and insensitive)
find . -type f -name "file*"
find . -type f -iname "file*"
find . -type f -name "*.txt"
# find all the files ending with something at a depth of 2
find . -type f -name "*.txt" -maxdepth 2
# find all the files modified in the last 10 min
find . -type f -mmin -10
# find all the files modified more than 10 min ago
find . -type f -mmin +10
# find all the files modified in a time range (in min)
find . -type f -mmin +10 -mmin -50000
# find all the files modified in the last 10 days
find . -type f -mtime -10
# find all the files modified more than 10 days ago
find . -type f -mtime +10
# find all the files more than some specified size
find . -size +1M
find . -size +1k
find . -size +1G
# find all the files less than some specified size
find . -size -1M
find . -size -1k
find . -size -1G
# find empty files
find . -empty
# find all the files with permission 777
find . -perm 777
# deleting all the files ending with a pattern upto a certain depth
find . -type f -name "*.txt" -maxdepth 2 -exec rm {} +

# grep command (Global Regular Expression Print)
# finding a string match in a file
grep "Expression" learning/linux-tutorials.sh
# finding the string match consisting of whole words (i-> case insensitive)
grep -w "Expression" learning/linux-tutorials.sh
grep -wi "Expression" learning/linux-tutorials.sh

# find the string match with line at which they occur
grep -win "Expression" learning/linux-tutorials.sh

# to see 4 lines before the matching takes place (for the previous command)
grep -win -B 4 "Expression" learning/linux-tutorials.sh

# to see 4 lines after the matching takes place (for the previous command)
grep -win -A 4 "Expression" learning/linux-tutorials.sh

# to see 4 lines before and after the matching takes place (for the previous command)
grep -win -C 4 "Expression" learning/linux-tutorials.sh

# for the whole directory scan in a given directory
grep -win -C 4 "grep" learning/*

# for the whole directory scan in the current directory
grep -winr -C 4 "cd" .

# to view the files in which the match has occured
grep -wirl -C 4 "cd" .

# to view the files with the number of matches
grep -wirc -C 4 "cd" .

# grep our history in terminal
history | grep "git commit"

# to search within the results we have got using grep of our history
history | grep "git commit" | grep ".gitignore"

# grepping using a regular expression
grep ".... | ...." learning/linux-tutorials.sh
grep -P "\d{2}" learning/linux-tutorials.sh
grep -wirlP "\d{2}" .

# curl command
# running a curl on a website
curl https://coreyms.com

# curl for a get request from a backend api running at localhost:3000
curl http://localhost:3000/lists

# to display the headers of previous get request using curl
curl -i http://localhost:3000/lists

# post request
curl -X POST -H "Content-Type: application/json" \
    -d '{"title": "Post Title"}' \
    http://localhost:3000/lists

# delete request
curl -X DELETE http://localhost:3000/lists/63a805ff01cca7084b836373

# saving a JSON response of an api request in a file
curl -o learning/get-request-response.json http://localhost:3000/lists

# rsync command
# syncing the files from folder1 to folder2
rsync -r folder1/ folder2/

# to view the files which will be a part of the dry run
rsync -av --dry-run folder1/ folder2/