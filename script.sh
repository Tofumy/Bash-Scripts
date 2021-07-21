#! /usr/bin/bash

read -p "What is your name ?" NAME 
echo "You are welcome \"$NAME\" to the scripting lesson"

echo "Welcome everyone to the new script"

read -p "What is your name: " NAME

if [ $NAME == "Ty" ]
then
    echo "You are very correct, your name is Ty"
else
    echo "you are a fraudster"
fi