#!/bin/bash

greetings="WELCOME"
user=$(whoami)
echo " $greetings $user to EmployeeMaster"

empCheck=$((RANDOM%2))
if [ $empCheck -eq 1 ];
then
echo "*Present*"
else [ $empCheck -eq 0 ];
echo "*Absent*"
fi


