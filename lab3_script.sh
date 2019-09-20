#!/bin/bash
# Authors : Blake Tellefsen
# Date: 9/20/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

# To find number of phone numbers (754)
# Input:  -oc [[:digit:]]{3}-[[:digit:]]{3}-[[:digit:]]{4}

# To find the number of valid emails:
# Input:  -c @ 

# To find and list all 303 phone numbers: 
# Input:  -o 303-[[:digit:]]{3}-[[:digit:]]{4}

# To find all geocities emails
# Input:  @geocities.com

ls -alt
filename=regex_practice.txt
outputFile=outputFile.txt 
echo "Input Filename: "
read filename


echo "Regex for finding number of Phone numbers."
echo "Input Regex:  "
read regex 

echo "Number of phone numbers" > $outputFile
cat $filename | egrep $regex >> $outputFile

cat $outputFile

echo "Enter Regex for finding number of emails in file"
echo "Input Regex: "
read regex

echo "Number of emails in file. " >> $outputFile
cat $filename | egrep $regex >> $outputFile
cat $outputFile

echo "Enter Regex for finding all 303 phone numbers:"
echo "Input Regex: "
read regex 

echo "List of 303 phone numbers in file." >> $outputFile
cat $filename | egrep $regex >> $outputFile 
cat $outputFile

echo "Store list of all geocities.com emails in file email_results.txt"
echo "Input regex: "
read regex

cat $filename | egrep $regex > email_results.txt 
cat email_results.txt 
