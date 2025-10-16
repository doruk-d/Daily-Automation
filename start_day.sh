#!/bin/bash

timestamp=$(date +"%Y-%m-%d__%H:%M")

echo "Choose Mode: C/ PY/ CYBER/ ELSE(please specify for our record)"
read -r mode
mode=$(echo "$mode" | tr '[:upper:]' '[:lower:]')

echo "Choose Focus of the Session"
read -r topic

if [ "$mode" = "c" ] || [ "$mode" = "py" ]; then

	if [ ! -d "$HOME/logs/${timestamp}-logs" ]; then
		mkdir -p "$HOME/logs/${timestamp}-logs"
	fi

	if [ ! -d "$HOME/dev/${mode}-drill" ]; then
		mkdir -p "$HOME/dev/${mode}-drill"
	fi
	
	logfile="$HOME/logs/${timestamp}-logs/${timestamp}-start"

	touch "$HOME/dev/${mode}-drill/${topic}-${timestamp}.${mode}"
	touch "$logfile" 

	echo "$timestamp - $topic" >> "$logfile"
	echo "Mode: $mode" >> "$logfile"
	echo "opening hx..."

	if [ -f "$HOME/dev/${mode}-drill/${topic}-${timestamp}.${mode}" ];then
    		hx "$HOME/dev/${mode}-drill/${topic}-${timestamp}.${mode}"
	fi


else
	if [ ! -d "$HOME/logs/${timestamp}-logs" ]; then
                mkdir -p "$HOME/logs/${timestamp}-logs"
        fi

        if [ ! -d "$HOME/dev/${mode}-drill" ]; then
                mkdir -p "$HOME/dev/${mode}-drill"
        fi

	logfile="$HOME/logs/${timestamp}-logs/${timestamp}-start"

	touch "$logfile"
        echo "$timestamp - $topic" >> "$logfile"
        echo "Mode: $mode" >> "$logfile"
        echo "Good Luck!.."
fi

