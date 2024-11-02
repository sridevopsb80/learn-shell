# Shell Supports two quotes
# ' - single quote
# " - Double quote

# When to use quotes
# if our input to any command is having a special characters ( not a-z, not 0-9, not _ ), then to nullify those speciality we use quotes

echo *
echo "*"

# single quotes are literal quoting( strict quoting). whatever is provided will be printed as is.
# double quotes are liberal quoting( less strict quoting).
a=10
echo 'a is $a'
#will print a is $a
echo "a is $a"
#will print a is 10

#use \ to escape using something as a variable

echo "That will be $a$s"
#Here we are trying to print "That will 10$s, considering that the value of $a is 10. However, this will not work, since $a and $s will be considered variables.

echo "That will be $a\$s"
#Introducing \ before the special character $ will make sure that it gets printed as it is and is not considered as a special character.

echo "That will be \$ $a"
