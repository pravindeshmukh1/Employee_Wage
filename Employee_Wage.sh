#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

#CONSTANTS
WAGE_PER_HOUR=20
WORKING_DAY=20
IS_FUll_TIME=1
IS_PART_TIME=2


function getEmployeeWage() {

for ((d=1;d<=20 ;d++ ))
do
case $((RANDOM%3)) in
	$IS_FUll_TIME ) emphours=8 ;;
	$IS_PART_TIME ) empHours=4 ;;
	* ) empHours=0 ;;
	esac
	employeeWage=$(($WAGE_PER_HOUR*$empHours))
	totalWage=$(($totalWage+$employeeWage))
	echo "Employee Month Wage:"$employeeWage
done
}
getEmployeeWage
