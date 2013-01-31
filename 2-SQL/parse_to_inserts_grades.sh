#!/bin/bash
lines=`wc -l $1 | cut -d ' ' -f 1`
lines_minus_1=`expr $lines - 1`
for line in `tail -n $lines_minus_1 $1`; do 
      echo "INSERT INTO student_grades VALUES (`echo $line | cut -d, -f 1-3`);";
done
