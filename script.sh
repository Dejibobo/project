

#!/usr/bin/bash

touch log_file.log
date >> log_file.log
free >> log_file.log
echo "---" >> log_file.log

# if [[ -z "$1" ]]; then
echo "Empty Argument passed"
else 
echo "welcome $1"
fi #

