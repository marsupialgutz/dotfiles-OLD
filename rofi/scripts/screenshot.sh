#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

dir="$HOME/.config/rofi/styles"
rofi_command="rofi -theme $dir/three.rasi"

# Options
screen=""
area=""
window=""

# Variable passed to rofi
options="$screen\n$area\n$window"

chosen="$(echo -e "$options" | $rofi_command -p '' -dmenu -selected-row 1)"
case $chosen in
    $screen)
		sleep 0.2; scrot -e 'xclip -selection clipboard -target image/png -i $f && rm $f'
        ;;
    $area)
		scrot -s --freeze -e 'xclip -selection clipboard -target image/png -i $f && rm $f'
        ;;
    $window)
		sleep 0.2; scrot -u -e 'xclip -selection clipboard -target image/png -i $f && rm $f'
        ;;
esac

