#!/bin/bash

greetings="WELCOME"
user=$(whoami)
echo " $greetings $user to EmployeeMaster"

fullday=8
partTime=4
salaryPerHour=20
empCheck=$((RANDOM%3))
if [ $empCheck -eq 1 ];
then
echo "*Present*"
totalSalary=$((salaryPerHour*fullday))
echo "TotalSalary for FullTime is $totalSalary"
elif [ $empCheck -eq 2 ];
then
echo "*Present*"
totalSalary=$((salaryPerHour*partTime))
echo "TotalSalary for PartTime is $totalSalary"
else [ $empCheck -eq 0 ];
echo "*Absent*"
totalSalary=0
echo "TotalSalary is $totalSalary"
fi


