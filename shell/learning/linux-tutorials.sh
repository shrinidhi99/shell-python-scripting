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