# learn-shell

We are going to learn Bash Shell Scripting

### List of Shell Topics 


1. Printing 
2. Variables
3. Conditions
4. Functions
5. Loops
6. SED Editor



#### SED 
1. Delete a line (d)
2. Add a  line (i)
3. Change a line (c)
4. Search and replace a word (s)

##### Sed is available in two forms
1. Display the changes on screen 
sed 'ACTION' FILE 
2. Edit the file 
sed -i 'ACTION' FILE 

##### Action Criteria can be picked in two ways.
1. Line Number based 
2. String search based

Example like, If we want to delete a line.

For line no criteria 

sed '1 d' file 

For search string criteria 

sed '/root/ d' file


Both the above examples will be just displaying the output, However if we want to edit the file 

sed -i '1d' file 

sed -i '/root/ d' file 


```text
cd /tmp
cp /etc/passwd .
ls
cat passwd
sed '1d' passwd - displays the output for deleting the first line in passwd file
cat passwd
sed -i '1d' passwd - edits the file passwd and deletes the first line. 
cat passwd
sed -i '/nologin/ d' passwd - edits the file passwd and deletes the lines with the string nologin
cat passwd
sed '1 i Hello World' passwd - inserts a new line as the first line (denoted by 1) with Hello World as the content.
sed '/bash/ i Hello World' passwd - wherever the text bash is found, inserts Hello World as the previous line. 
sed '/bash/ a Hello World' passwd - wherever the text bash is found, appends Hello World to it. 
sed '/bash/ c Hello World' passwd - wherever the text bash is found, copies the word Hello World (thus replacing the entire line with just Hello World.
cat passwd
sed 's/halt/poweroff/' passwd - s stands for substitute. replaces the word halt with poweroff. this only substitutes the first entry. does not recursively substitute all occurrences of the word halt. 
sed 's/halt/poweroff/g' passwd - the usage of g allows us to replace all occurrences of halt with the word poweroff.
sed 's/bash/BASH/' passwd - substitutes bash with BASH.
sed 's/bash/ksh/' passwd - substitutes bash with ksh.
sed '/roboshop/ s/bash/ksh/' passwd - searches for the roboshop and replaces bash to ksh in that line (if bash is present).
```


While we learn any coding, These 4 are kind of pillars to learn

1. Variables
2. Functions 
3. Conditions
4. Loops 


echo $? is used to check the exit status. exit status can be from 0 to 255. 0-success. 1 to 255-failure.