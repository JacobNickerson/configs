ARG=$1

if [ -z $ARG ]; then
	echo "error: no command, use --help to display options"
	exit 1
elif [[ $ARG == "on" ]]; then
    sed -i 's/opacity = 0.85/opacity = 1/' ~/.config/alacritty/alacritty.toml
elif [[ $ARG == "off" ]]; then
    sed -i 's/opacity = 1/opacity = 0.85/' ~/.config/alacritty/alacritty.toml
elif [[ $ARG == "--help" ]]; then
	echo "commands:
---------
on           : Sets Alacritty opacity to 1
off          : Sets Alacritty opacity to 0.85
--help       : Displays this menu"

else
	echo "error: invalid command"
	exit 1
fi
