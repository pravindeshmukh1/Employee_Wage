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
function getWorkHours() {

case $1 in
   $IS_FUll_TIME ) empHours=8 ;;
   $IS_PART_TIME ) empHours=4 ;;
   * ) empHours=0 ;;
   esac
echo $empHours
}
while [[ $day -lt $WORKING_DAY && $hour -lt $WORKING_HOUR ]]
do
((day++))

	workHours="$( getWorkHours $((RANDOM%3)) )"
	employeeWage=$(($WAGE_PER_HOUR+$workHours))
	totalWage=$(($totalWage+$employeeWage))
	echo "Employee Wage:"$totalWage
	echo "$hour: Hour $day: Day"
	echo "workhours" $workHours
done

