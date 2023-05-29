#!/bin/bash
 
lock=" Lock"
logout="󰍂 Logout"
shutdown="⏻ Poweroff"
reboot="󰑓 Reboot"
sleep=" Suspend"
 
selected_option=$(echo "$lock
$logout
$sleep
$reboot
$shutdown" | rofi -dmenu -i -p "Powermenu" \
		  -theme "~/.config/rofi/powermenu.rasi")

if [ "$selected_option" == "$lock" ]
then
  gtklock -d
elif [ "$selected_option" == "$logout" ]
then
  loginctl kill-user dk
elif [ "$selected_option" == "$shutdown" ]
then
  loginctl poweroff
elif [ "$selected_option" == "$reboot" ]
then
  loginctl reboot
elif [ "$selected_option" == "$sleep" ]
then
   loginctl suspend
else
  echo "No match"
fi
