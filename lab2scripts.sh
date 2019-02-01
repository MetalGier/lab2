#!/bin/bash
# Authors : Graham Gier
# Date: 1/31/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

#takes user input for filename and regular expression
echo "Enter a filename:"
read filename
echo "Enter a regex:"
read regex
feeds them into grep
grep $regex $filename

#regular expression finds phone numbers and -c counts them
echo "# of phone numbers:"   
grep -cE [0-9]{3}-[0-9]{3}-[0-9]{4} regex_practice.txt
#regular expression finds emails and -c counts them
echo "# of emails:"
grep -cE "[0-9a-zA-Z]+@[0-9a-zA-Z]+\.[a-zA-Z]" regex_practice.txt

#finds any 303 phone number and writes it to the results.txt
grep 303-  regex_practice.txt > phone_results.txt 
#finds any geocities email and writes it to the results txt
grep  @geocities.com regex_practice.txt > email_results.txt
#matches the command line regex and puts it in command
grep -E $1 regex_practice.txt > command_results.txt
