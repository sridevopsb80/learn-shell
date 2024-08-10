# Variable is a name give to a string.
# syntax: x=100, y=abc, z=2.0
# In shell by default there are no data types. It is all a string. In the above line, 100 is a number, abc are characters, 2.0 is a float value, but in shell, they are all string.

# How to access a variable , $VARNAME - $x, $y, $z, or ${x}, ${y}, ${z}
#Below is an example where we are defining and calling the variables.

name=DevOps
faculty=John

echo Welcome to $name Training
echo ${name} Training - Faculty ${faculty}

##############################################

# When to use {} while accessing variable - In case you have to print string with combination of variables

apple=20
echo Apple price - ${apple}Dollars #Using the {} here will isolate the apple from Dollars and make sure the apple variable is called.
# The output of this will be Apple price - 20Dollars.

#############################################

# Variable Substitutions

# Command Substitution  - You can declare a variable by executing a command and store the output in a variable
# Syntax : var=$(command)

# Arithmetic Substitution  - You can declare a variable by solving the given arithmetic expression
# syntax: var=$((1+2-3/4)). notice that we are using double brackets here and not single bracket like the command substitution

date=$(date) #calls the date command in bash
echo Today date is - $date

add=$((2+3+4))
echo 2+3+4 - $add

#########################################
# You can access variables from CLI

# Approach 1  - define the variable in the shell file and define the variable values while running the shell file
#
# x=100 y=200 bash 03-variables.sh

echo Value of x from CLI - $x
echo Value of y from CLI - $y

# Approach 2 - using special variables
#
# bash 03-variables.sh 100 200  (These variables $1, $2 .. $n, $*, $# are called as special variables in shell)

echo First Argument - $1 #the value is taken from the first variable value provided in the cli and is printed. 100 is the output.
echo Second Argument - $2 #the value is taken from the second variable value provided in the cli and is printed. 200 is the output.
echo All arguments - $* #all values provided in the cli will be printed. 100 200 will be the output.
echo Argument Count - $# #prints the number of arguments provided in the cli. 2 is the output.

# Approach 3 - export the variable as an environment variable
#
# export z=500 ; bash 03-variables.sh
# by using export, you are converting the variable into an environment variable. this variable will be accessible by all scripts using this environment

echo Enviornment Variable z - $z


# Variable names can have alphabets, numbers and _ (Same for Function also)
# Variable name styles. Ex: variable name is coursename
# CamelCase - courseName
# PascalCase - CourseName
# snake case - course_name
# UNIX Way ( Later Linux) - COURSE_NAME. this is how environment variables are usually defined.

#Variable naming style should be uniform on the project and perhaps across the organization. mix and match should not be encouraged.

