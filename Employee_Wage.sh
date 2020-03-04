#!/bin/bash -x

#CONSTANTS
WAGE_PER_HOUR=20
ISFUllTIME=1
IsPARTTIME=2

echo "Welcome to Employee Wage Computation"

function check_Attendance() {
	if [ $((RANDOM%2)) -eq 0 ]
	then
		echo "Employee Absent"
		empWage=0
	else
		if [ $ISFUllTIME -eq $((RANDOM%2)) ]
		then
			empHours=8
		elif [ $ISFULLTIME -eq $((RANDOM%2)) ]
		then
			empHours=4
		fi
	dailyWage=$(($WAGE_PER_HOUR*$empHours))
	echo " Employee Daily Wage:"$dailyWage
	fi
}
check_Attendance
