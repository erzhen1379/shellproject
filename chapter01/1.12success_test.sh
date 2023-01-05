#!/bin/bash
CMD=pwd
if [ $? -eq 0 ]
then 
     echo "$CMD executed successfully"
else 
     echo "$CMD executed failed"
fi
