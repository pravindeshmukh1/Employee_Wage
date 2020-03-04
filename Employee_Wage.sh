#!/bin/bash -x

#CONSTANTS
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8


echo "Welcome to Employee Wage Computation"

function check_Attendance() {
	if [ $((RANDOM%2)) -eq 1 ]
	then
		echo "Employee Present"
		dailyWage=$(($WAGE_PER_HOUR * $FULL_DAY_HOUR))
	else
		echo "Employee Absent"
	fi
}
check_Attendance
