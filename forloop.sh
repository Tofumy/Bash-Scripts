#! /usr/bin/bash

echo "This is using case switch and a for loop to rename a couple of test files"

read -p "Can you choose old/new to rename your files ? " CHOICE

FILES=$(ls *.txt)
NEW="new"
OLD="old"

case $CHOICE in
    [oO] | [oO][lL][dD])
        for EACHFILE in $FILES
            do
                echo "Renaming $EACHFILE to old-$EACHFILE"
                mv $EACHFILE $OLD-$EACHFILE
        done
        ;;
    [nN] | [nN][eE][wW])
        for EACHFILE in $FILES
            do 
                echo "Renaming $EACHFILE to new-$EACHFILE" 
                mv $EACHFILE $NEW-$EACHFILE
        done
        ;;
    *)
        echo "You did not select the right answer choice, you typed in this \"$CHOICE\" which does not follow the instructions"
esac

echo "Thank you..."
    