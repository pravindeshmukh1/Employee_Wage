#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

#CONSTANTS
WAGE_PER_HOUR=20
IS_FUll_TIME=1
IS_PART_TIME=2


function getEmployeeWage() {
	case $((RANDOM%3)) in
	$IS_FULL_TIME ) empHours=8 ;;
	$IS_PART_TIME ) empHours=4 ;;
	* ) empHours=0 ;;
	esac
	employeeWage=$(($WAGE_PER_HOUR*$empHours))
	echo "Employee Daily Wage:"$employeeWage
}
getEmployeeWage
