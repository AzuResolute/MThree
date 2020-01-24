#!/usr/bin/bash
#The shell variable $? holds the exit status produced by the last command.

for month in 1 2 3 4 5 6 7 8 9 10 11 12
do
	cal $month 2020 | grep '13....$' > /dev/null

	if [[ $? -eq 0 ]]
	then
		#The grep succeeded in finding what it was looking for.
		echo $month
	fi
done

exit 0
