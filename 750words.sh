#!/bin/bash
touch /home/$(whoami)/750words/$(date +%F).md
python3 /opt/extras.ubuntu.com/uberwriter/bin/uberwriter /home/$(whoami)/750words/$(date +%F).md

# Requires zenity for popup notifications, not finished
#MESSAGEHEADER="Number of words you have written today: "
#zenity --info --text="$MESSAGEHEADER"
#wc -w  < /home/$(whoami)/Documents/750words/$(date +%F).txt
