#!/bin/bash
lines=`wc -l $1 | cut -d ' ' -f 1`
lines_minus_1=`expr $lines - 1`
for line in `tail -n $lines_minus_1 $1`; do 
      echo "INSERT INTO student_family_deaths VALUES (`echo $line | cut -d, -f 1,4,5,6`);";
done
