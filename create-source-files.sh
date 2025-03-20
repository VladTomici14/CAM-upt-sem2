#!/bin/bash 

for i in {1..11}
do 
	touch "ex$i.m"
	echo "Created ex$i.m"
done

echo "All files were created"
