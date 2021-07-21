#! /usr/bin/bash

echo "This is a simple case script..."

read -p "What is your name: " NAME

echo "Welcome $NAME, we are glad to have you here."

read -p "Are you a boy or a girl, $NAME ? " GENDER

echo $GENDER

if [ $GENDER == 'boy' ] || [ $GENDER == 'Boy' ]
then
    echo "Thank you for the answer Master $NAME"
elif [ $GENDER = 'girl' ]
then
    echo "Thank you for the answer Mistress $NAME"
else   
    echo "You must have selected the wrong choice or are playing tricks with this simnple script"
fi


read -p "Are you 21 years old ? " ANS

case "$ANS" in
    [yY] | [yY][eE][sS])
        echo "You can have a beer"
        ;;
    [nN] | [nN][oO])
        echo "Sorry, no drinking is allowed for you"
        ;;
    *)
        echo "Please enter y/yes or n/no"
        ;;
esac

echo "Thank you"
