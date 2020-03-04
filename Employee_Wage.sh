#!/bin/bash -x

echo "Welcome to Employee Wage Computation"

function check_Attendance() {
	if [ $((RANDOM%2)) -eq 1 ]
	then
		echo "Employee Present"
	else
		echo "Employee Absent"
	fi
}
check_Attendance
