"Linux Basic Cheat Sheet"

# To make the script an executable, run the below:
chmod +x script.sh
# To run the script, use
./script.sh 
or 
sh script.sh
or
bash script.sh


which bash

#! /usr/bin/bash    (that should go to every start of a bash shell)
#BashShell ends with .sh format

# ECHO COMMAND
echo Hello Word!

# VARIABLES
#VARIABLES should be Uppercase by convention, Letters, Numbers and underscores are used

NAME = "Brad"
echo "My name is $NAME"
echo "My name is ${NAME}"

# USER INPUT
read -p "Enter your name:  " NAME
echo "Hello $NAME, nice to meet you"

# SIMPLE IF STATEMENT

if  [ $NAME  ==  "Brad" ]
then
	echo "Your name is Brad"
fi

# IF-ELSE

if  [ "$NAME"  ==  "Brad" ]
then
	echo "Your name is Brad"
else
	echo "Your name is NOT Brad"
fi

# ELSE-IF (elif)

if  [ "$NAME" == "Brad" ]
then
	echo "Your name is Brad"
elif  [ "$NAME" == "Jack" ]
then
	echo "Your name is Jack"
else
	echo "Your name is NOT Brad or Jack"
fi


# COMPARISON

##########
# val1 -eq val2  Returns true if the values are equal
# val1 -ne val2  Returns true if the values are not equal
# val1 -gt val2  Returns true if the val1 is greater than val2
# val1 -ge val2  Returns true if the val1 is greater than or equal to val2
# val1 -lt val2  Returns true if the val1 is less than val2
# val1 -le val2  Returns true if the val1 is less than or equal to val2
#########

NUM1 = 3
NUM2 = 5
if  [ "$NUM1" -gt "$NUM2" ]
then
	echo "$NUM1 is greater than $NUM2"
else
	echo "$NUM1 is less than $NUM2"
fi

# FILE CONDITIONS

##########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file    True if the file has a non-zero size
# -u   True if the user id is set on a file
# -w  True if the file is writable
# -x   True if the file is an executable
#########

FILE="test.txt"
if [ -f "$FILE" ]
then
	echo "$FILE is a file" 
else
	echo "$FILE is not a file"
fi

FILE="test.txt"
if [ -e "$FILE" ]
then
	echo "$FILE is a file"
else
	echo "$FILE is not a file"
fi


# CASE STATEMENT

read -p "Are you 21 or over? Y/N " ANSWER
case "$ANSWER" in
	[yY] | [yY][eE][sS])
		echo "You can have a beer"
		;;
	[nN] | [nN][oO])
		echo "Sorry, no drinking"
		;;
	*)
		echo "Please enter y/yes or n/no"
esac

# SIMPLE FOR LOOP

NAMES="Gladys Toby James Gbemi"
for NAME is $NAMES
	do
		echo "Hello $NAME"
done


# FOR LOOP TO RENAME FILES
FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES
	do 
		echo "Renaming $FILE to new-$FILE"
		mv $FILE $NEW-$FILE
done



# WHILE LOOP - READ THROUGH A FILE LINE BY LINE

LINE=1
while read -r CURRENT_LINE
	do
		echo "$LINE: $CURRENT_LINE"
		((LINE++))
done < "./new-1.txt"



# FUNCTION

function sayHello() {
	echo "Hello World"
}

# Functions with Parameters

function greet() {
	echo "Hello, I am $1 and I am $2"
}
greet "Tofunmi" "26"

# CREATE FOLDER AND WRITE TO A FILE

mkdir hello
touch "hello/word.txt"
echo "Hello World" >> "hello/world.txt"
echo "Created hello/world.txt'

















Examples: To work on
#! /usr/bin/bash 


read -p "Please enter your name: " NAME


read -p "Enter your name: " NAME echo "Hello $NAME, You are welcome to this simple linux script"

read -p "How old are you: " AGE

if ["$AGE" -gt 18]
then
    echo "You are an adult and can proceed to access the other features of this program"
elif ["$AGE" == 18]
then
    echo "You are just 18 and not ready to access this features, wait for some more time $NAME"
else
    echo "You are way beyond yourself, grow up"
fi

read - p "You can hit Enter to continue"
