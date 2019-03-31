echo "enter a filename:\c"
a=1
while  [ $a -le 3 ]
do
	b=1
	while [ $b -le 3 ]
	do
		c=1
		while [ $c -le 3 ]
		do
			echo $a$b$c

			echo $c
			c=`expr $c + 1`
		done
		echo $b
		b=`expr $b + 1`
	done
	echo $a
	a=`expr $a + 1`
done
