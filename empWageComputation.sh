#!/bin/bash -x

greetings="WELCOME"
user=$(whoami)
echo " $greetings $user to EmployeeMaster"

fullTime=1
partTime=2
salaryPerHour=20
Month=20

for totalWorkingHours in 100
do
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

empWorkingHours=$((workingHours*salaryPerHour))
if [ $empWorkingHours -eq 0 ];
then
echo "Employee Absent"
elif [ $empWorkingHours -lt $totalWorkingHours ];
then
echo "Total Salary per month is $((Month*empWorkingHours))"
else
echo "Total Salary is $((salaryPerHour*totalWorkingHours))"
fi
done

function workHours()
{
echo "Work Hours are $workingHours hours per day"
}
workHours

