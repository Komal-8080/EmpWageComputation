#!/bin/bash -x

greetings="WELCOME"
user=$(whoami)
echo " $greetings $user to EmployeeMaster"

fullTime=1
partTime=2
salaryPerHour=20
salaryPerMonth=20
empCheck=$((RANDOM%3))
case $empCheck in
$fullTime)
echo "*Present*"
workingHours=8 ;;
$partTime)
echo "*Present*" 
workingHours=4 ;;
*)
echo "*Absent*"
workingHours=0 ;;
esac
TotalSalary=$((workingHours*salaryPerHour*salaryPerMonth))
echo "Total Salary is $TotalSalary"
