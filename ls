#!/bin/bash

# ls for git restricted shell

# Compute width of each .git directory

W=0
for L in $(
	ls -1d *.git | while read dir
	do
		DL="`ls -ld $dir`"
		echo "$DL" | wc -c
		done
	)
do
	if test "$L" -gt "$W"
	then
		W=$L
	fi
done

# List, including description if present

ls -1d *.git | while read dir
do
	L="`ls -ld $dir`"
	if test -f $dir/description
	then
		D="`cat $dir/description`"
		if test -z "`sed -es'/^Unnamed repository.*//' $dir/description`"
		then
			echo "$L"
		else
			printf  "%-${W}s%s\n" "$L" "$D"
		fi
	else
		echo "$L"
	fi
done
