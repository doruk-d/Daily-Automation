#!/bin/bash

timestamp=$(date +"%Y-%m-%d__%H:%M")

echo "Choose Mode: C/ PY/ CYBER/ ELSE(please specify for our record)"
read -r mode
mode=$(echo "$mode" | tr '[:upper:]' '[:lower:]')

echo "Choose Focus of the Session"
read -r topic

logfile="$HOME/logs/${timestamp}-logs/${timestamp}-start"
log_dir="$HOME/logs/${timestamp}-logs"
drill_dir="$HOME/dev/${mode}-drill"
code_file="$HOME/dev/${mode}-drill/${topic}-${timestamp}.${mode}"

mkdir -p "$log_dir" "$drill_dir"
touch "$logfile" 

echo "$timestamp - $topic" >> "$logfile"
echo "Mode: $mode" >> "$logfile"


([ "$mode" = "c" ] || [ "$mode" = "py" ]) && {
	touch "$code_file"
	echo "opening hx..."
	hx "$code_file"
} || echo "Good Luck!.."


