#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

#CONSTANTS
WAGE_PER_HOUR=20
WORKING_DAY=20
IS_FUll_TIME=1
IS_PART_TIME=2
WORKING_HOUR=100

day=0
hour=0
function getEmployeeWage() {

while [[ $day -lt $WORKING_DAY && $hour -lt $WORKING_HOUR ]]
do
((day++))
case $((RANDOM%3)) in
	$IS_FUll_TIME ) empHours=8 ;;
	$IS_PART_TIME ) empHours=4 ;;
	* ) empHours=0 ;;
	esac
hour=$(($hour+$empHours))
done
	employeeWage=$(($WAGE_PER_HOUR*$empHours))
	totalWage=$(($totalWage+$employeeWage))
	echo "Employee Wage:"$totalWage
	echo "$hour: Hour $day: Day"
}
getEmployeeWage
