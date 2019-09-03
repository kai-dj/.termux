#!/bin/bash
# read all A-priority TODO-list items with tts-speak
termux-tts-speak "alpha priority."
cat ~/org/ZLY/TODO.org | grep "TODO \[\#A" |  while read -r line
do
    cutline=$(echo "$line"|cut -d "]" -f 2|xargs)
    termux-tts-speak "$cutline""."
done
