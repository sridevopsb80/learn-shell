# Print Color. Here are the color codes
# RED         31
# GREEN       32
# YELLOW      33
# BLUE        34
# MAGENTA     35
# CYAN        36


# syntax : echo -e "\e[COLmMESSSAGE\e[0m"
# -e to enable \e (escape sequence)
# \e to enable color
# [COLm - Which color to enable, replace COL with 31-36
# [0m - 0 to reset (disable) the color.

echo -e "\e[31mHello World in Red Color\e[0m"
echo -e "\e[32mHello World in Green Color\e[0m"
echo -e "\e[33mHello World in Yellow Color\e[0m"
echo -e "\e[34mHello World in Blue Color\e[0m"
echo -e "\e[35mHello World in Magenta Color\e[0m"
echo -e "\e[36mHello World in Cyan Color\e[0m"

# \n - used to introduce a new line
echo -e "Hello\n\nWorld"

# \t - used to introduce a tab space
echo -e "Hello\t\tWorld"
