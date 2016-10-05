#!/bin/bash - 
#===============================================================================
#
#          FILE: jeremy_marcusen_hw3.sh
# 
#         USAGE: ./jeremy_marcusen_hw3.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Jeremy Marcusen (), JeremyMarcusen@mail.weber.edu
#  ORGANIZATION: 
#       CREATED: 10/05/2016 10:37
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error
usage="Usage ./jeremy_marcusen_hw3.sh
-a awksrc
-s sedsrc
-i inputFile"

while getopts ":s:a:i:" opt; 
do
	case $opt in
		s ) sedFile=$OPTARG;;
		a ) awkFile=$OPTARG;;
		i ) inputFile=$OPTARG;;
		\?) echo $usage
			exit 1;;
	esac
done

if [[ $1 == "--help" ]]
	then
	echo $usage
	exit 0
fi

if [[ "$#" -ne "6" ]];
	then
	echo "All three arguments are necessary"
	echo $usage
	exit 1
fi

`sed -f "$sedFile" "$inputFile" | awk -f $awkFile > 20CenturyPresidents.txt`
echo "Your output file will be saved in the 20CenturyPresidents.txt file"

exit 0
