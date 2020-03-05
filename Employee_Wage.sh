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
function calculateDailyWage() {
	local workHrs=$1
	wage=$(($workHrs*$WAGE_PER_HOUR))
	echo $wage
}


while [[ $day -lt $WORKING_DAY && $workHours -le $WORKING_HOUR ]]
do
((day++))

	workHours="$( getWorkHours $((RANDOM%3)) )"
	DailyWage=$(($WAGE_PER_HOUR*$workHours))
	totalWage=$(($totalWage+$DailyWage))
	employeeDailWage[$day]="$( calculateDailyWage $workHours )"

done
	echo "workhours" $workHours
	echo "Employee Total Wage:"$totalWage
	echo "Employee Daily Wage " ${employeeDailWage[@]}
	echo "Employee Day " ${!employeeDailWage[@]}
