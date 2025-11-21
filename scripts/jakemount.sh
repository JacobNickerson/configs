ARG=$1
PARTITION=$2

if [ -z $ARG ]; then
	echo "error: no command, use --help to display options"
	exit 1
elif [[ $ARG == "win" ]]; then
	if [ -z $PARTITION ]; then
		echo "error: no partition path specified"
		exit 1
	fi
	sudo mkdir -p /mnt/win
	sudo mount -t ntfs-3g -o uid=$(id -u) $PARTITION /mnt/win > /dev/null 2>&1
	if [ ! $? -eq 0 ]; then
		echo "error: mount failed"
		exit 1
	else 
		echo "Mounted partition at /mnt/win"
		exit 0
	fi
elif [[ $ARG == "usb" ]]; then
	if [ -z $PARTITION ]; then
		echo "error: no partition path specified"
		exit 1
	fi
	sudo mkdir -p /mnt/win
	sudo mount -o uid=$(id -u) $PARTITION /mnt/usb > /dev/null 2>&1
	if [ ! $? -eq 0 ]; then
		echo "error: mount failed"
		exit 1
	else 
		echo "Mounted partition at /mnt/usb"
		exit 0
	fi
elif [[ $ARG == "partitions" ]]; then
	lsblk
elif [[ $ARG == "--help" ]]; then
	echo "commands:
---------------------------------------------------
win <path>: Mounts a windows partition at /mnt/win
usb <path>: Mounts a USB partition at /mnt/usb
partitions: Displays the current partitions
--help    : Displays this menu"
else
	echo "error: invalid command"
	exit 1
fi
