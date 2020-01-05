#!/bin/sh

emoji=$(cat ./emojis.txt | dmenu -p 'Select emoji' -l 20 | awk '{print $1}');

if [ ! -z "$emoji" ]; then
    echo "$emoji" | xclip -selection clipboard;
    notify-send "$emoji is copied into the clipboard!";
fi

