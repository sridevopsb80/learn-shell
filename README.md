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
1. Delete a line 
2. Add a  line 
3. Change a line
4. Search and replace a word

##### Sed is available in two forms
1. Display the changes on screen (preview only. does not execute the changes).

sed 'ACTION' FILE 

3. Edit the file 
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
sed '1d' passwd
cat passwd
sed -i '1d' passwd
cat passwd
sed -i '/nologin/ d' passwd
cat passwd
sed '1 i Hello World' passwd
sed '/bash/ i Hello World' passwd
sed '/bash/ a Hello World' passwd
sed '/bash/ c Hello World' passwd
cat passwd
sed 's/halt/poweroff/' passwd
sed 's/halt/poweroff/g' passwd
sed 's/bash/BASH/' passwd
sed 's/bash/ksh/' passwd
sed '/roboshop/ s/bash/ksh/' passwd
```


While we learn any coding, These 4 are kind of pillars to learn

1. Variables
2. Functions 
3. Conditions
4. Loops 

