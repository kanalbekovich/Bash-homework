#!/bin/bash

echo "Please, choose numbers between 120-170"

function steak() {
read -p "Enter your meat temperature: " temp

echo ""

if [ $temp -ge 120 ] && [ $temp -le 130 ]
then
       echo "Rare"
elif [ $temp -ge 131 ] && [ $temp -le 140 ]
then
       echo "Medium rare"
elif [ $temp -ge 141 ] && [ $temp -le 150 ]
then 
       echo "Medium"
elif [ $temp -ge 151 ] && [ $temp -le 160 ]
then
       echo "Medium well"
elif [ $temp -ge 161 ] && [ $temp -le 170 ]
then
       echo "Well done"
else 
       echo "Wrong input, choose temperature between 120-170!"
fi 
}

steak 

if [ $temp -lt 120 ] || [ $temp -gt 170 ]
then
  		steak
fi


