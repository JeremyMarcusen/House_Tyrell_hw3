#!/bin/awk -f
BEGIN{FS=","}
{
	if ($1+1 > 26)
	print $2"," " from " $4 " to " $5
}

