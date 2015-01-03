#!/bin/bash
mkdir /home/$(whoami)/YourDailyWrite/YourEntries
touch /home/$(whoami)/YourDailyWrite/YourEntries/$(date +%F).md
python3 /opt/extras.ubuntu.com/uberwriter/bin/uberwriter /home/$(whoami)/YourDailyWrite/YourEntries/$(date +%F).md

# Requires zenity for popup notifications, not finished
#MESSAGEHEADER="Number of words you have written today: "
#zenity --info --text="$MESSAGEHEADER"
#wc -w  < /home/$(whoami)/YourDailyWrite/Entries/$(date +%F).txt
