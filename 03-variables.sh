# Variable is a name give to a string.
# syntax: x=100, y=abc, z=2.0
# In shell by default there are no data types. It is all a string. In the above line, 100 is a number, abc are characters, 2.0 is a float value, but in shell, they are all string.

# How to access a variable , $VARNAME - $x, $y, $z, or ${x}, ${y}, ${z}

name=DevOps
faculty=John

echo Welcome to $name Training
echo ${name} Training - Faculty ${faculty}

# When to use {} while accessing variable - In case if you have to print string with combination of variables
apple=20
echo Apple price - ${apple}Dollars

# Variable Substitutions
# Command Substitution  - You can declare a variable by executing a command and store the ouptut in a variable
# Syntax : var=$(command)

# Arithmetic Substitution  - You can declare a variable by solving the given arithmetic expression
# syntax: var=$((1+2-3/4))

date=$(date)
echo TOday date is - $date

add=$((2+3+4))
echo 2+3+4 - $add

# You can access variables from CLI
# Approach 1 - x=100 y=200 bash 03-variables.sh
echo Value of x from CLI - $x
echo Value of y from CLI - $y

# Approach 2 - bash 03-variables.sh 100 200  ( These variables $1, $2 .. $n, $*, $# are called as special variables in shell)
echo First Argument - $1
echo Second Argument - $2
echo All arguments - $*
echo Argument Count - $#

# Approach 3 - export z=500 ; bash 03-variables.sh
echo Enviornment Variable z - $z


# Variable names can have alphabets, numbers and _ (Same for Function also)
# Variable name styles. Ex: variable name is coursename
# CamelCase - courseName
# PascalCase - CourseName
# snake case - course_name
# UNIX Way ( Later Linux) - COURSE_NAME

