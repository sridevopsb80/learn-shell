# Shell Supports two quotes
# ' - single quote
# " - Double quote

# When to use quotes
# if our input to any command is having a special characters ( not a-z, not 0-9, not _ ), then to nullify those speciality we use quotes

echo *
echo "*"

# single quotes are literal quoting( strict quoting)
# double quotes are liberal quoting( less strict quoting)
a=10
echo 'a is $a' #will print a is $a
echo "a is $a" #will print a is 10

#use \ to escape using something as a varaible
echo "That will be \$ $a"
