#!/bin/bash

tagflag=false
todoitem="* TODO"
if [ "$1" = "alpha" ] ||  [ "$1" = "alpha" ]
then
    todoitem="$todoitem"" ""[#A]"
    shift
elif [ "$1" = "beta" ]
then
    todoitem="$todoitem"" ""[#B]"
    shift
elif [ "$1" = "gamma" ]
then
    todoitem="$todoitem"" ""[#C]"
    shift
elif [ "$1" = "delta" ]
then
    todoitem="$todoitem"" ""[#D]"
    shift
fi

for item in $@
do
    if [ "$item" = "tech" ] || [ "$item" = "tec" ] 
    then
        tagflag=true
    else
        if [ $tagflag = false ]
        then
            todoitem="$todoitem"" ""$item"
        else
            todoitem="$todoitem"" :""$item"":"
        fi
    fi
done
sed -i "1i$todoitem" ~/org/ZLY/TODO.org 2>/dev/null
termux-tts-speak "aufgabe angelegt"
