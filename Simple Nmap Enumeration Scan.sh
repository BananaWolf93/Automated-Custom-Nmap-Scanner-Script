# THIS SCRIPT IS SOMETHING I QUICKLY PUIT TOGETHER TO MAKE IT EASIER TO SCAN A TARGET USING TWO OR MORE SPECIFIC NMAP SCANS FOR ENUMERATION.

# The following 2 lines simply accept a user's input and stores it in a variable called $IP.

echo "Please enter the IP address you'd like to scan.: "
read IP

# The following 2 nmap commands are executed. one with all TCP ports (SYN scan) and the second one is an aggressive scan. The results are then stored in files named as the value of the $IP variable in the current working directory.

sudo nmap -sT -p- $IP -vvv -oA $IP  && sudo nmap -A $IP -vvv -oA $IP

# The following line is just to notify the user of the completion and expectation regarding the files being stored.

echo "The scan is now in progress and the files will be stored in the current working directory... "