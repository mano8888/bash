echo  "enter a character:\c"

read vehicle 

case $vehicle in

	[car])
		echo "car cost i"
		;;
	[van])
		echo "van cost is"
		;;
	[bus])
		echo "bus cost is"
		;;
	?)
		echo "nothing is there"
		;;
	*)
		echo "all"
		;;
esac


