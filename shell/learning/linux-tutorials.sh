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
