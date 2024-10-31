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
2. Add a  line (i). i stands for insert. a can be used for append.
3. Change a line (c)
4. Search and replace a word (s). s stands for substitute. only substitutes the first occurrence in a line and does not replace all occurrences in the same line. to recursively substitute a word in the same line, use s along with g, where s is used before the string and g is used after the string.

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
sed 's/halt/poweroff/' passwd - s stands for substitute. replaces the word halt with poweroff. this only substitutes the first entry in a line. does not recursively substitute all occurrences of the word halt in the same line. 
sed 's/halt/poweroff/g' passwd - the usage of g allows us to replace all occurrences of halt with the word poweroff in the same line.
sed 's/bash/BASH/' passwd - substitutes bash with BASH.
sed 's/bash/ksh/' passwd - substitutes bash with ksh.
sed '/roboshop/ s/bash/ksh/' passwd - searches for the word roboshop and replaces bash to ksh in that line (if bash is present).
sed -i '/^bind/ s/127.0.0.1/0.0.0.0/' - ^bind will look for lines starting with bind. s substitutes 127.0.0.1 with 0.0.0.0 in those lines.
```


While we learn any coding, These 4 are kind of pillars to learn

1. Variables
2. Functions 
3. Conditions
4. Loops 


echo $? is used to check the exit status. exit status can be from 0 to 255. 0-success. 1 to 255-failure.

##### Conditions

1. simple if

```text
Syntax:
if [ expression ]; then 
  commands
fi
```

2. if-else

```text
Syntax:
if [ expression ]; then 
  commands
else
  commands
fi
```

3. else-if

```text
Syntax:

if [ expression1 ]; then 
  commands
elif [ expression2 ];
then 
  commands
else
  commands
fi
```
###### if conditions - expressions

1. Number expressions: -eq, -ne, -lt, -le, -gt, -ge. Examples: [ 1 -eq 2 ], [ 2 -ge 2 ], [ 3 -lt 5 ].
2. String expressions: ==, !=, -z. Examples: [ abc == abc ], [ xyz != abc ], [ -z $var ].
3. File expressions: -e. [ -e /opt/file ].
