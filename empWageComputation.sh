#!/bin/bash -x

greetings="WELCOME"
user=$(whoami)
echo " $greetings $user to EmployeeMaster"

fullday=1
partTime=2
salaryPerHour=20
empCheck=$((RANDOM%3))
case $empCheck in
1)
echo "*Present*"
workingHours=8 ;;
2)
echo "*Present*" 
workingHours=4 ;;
*)
echo "*Absent*"
workingHours=0 ;;
esac
TotalSalary=$((workingHours*salaryPerHour))
echo "Total Salary is $TotalSalary"
