# Function is a name given to a set of commands.

# Syntax

# function abc() {
# commands
# commands
# }

# OR

# abc() {
# commands
# commands
#}

# How to call a function. - Simply call the function like a command

# abc


SAMPLE() {
  echo SAMPLE FUNCTION
}

SAMPLE
SAMPLE

#################################

# Variables in functions
# -->  Declare variable in function, Main program can access it and vice-versa

DEMO() {
  echo First Argument - $1
}

DEMO abc # the variable value abc is being passed while calling the function.


