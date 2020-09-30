#!/bin/bash

greetings="WELCOME"
user=$(whoami)
echo " $greetings $user to EmployeeMaster"

fullday=8
salaryPerHour=20
empCheck=$((RANDOM%2))
if [ $empCheck -eq 1 ];
then
echo "*Present*"
totalSalary=$((salaryPerHour*fullday))
echo "TotalSalary is $totalSalary"
else [ $empCheck -eq 0 ];
echo "*Absent*"
fi


