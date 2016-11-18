#!/bin/bash

# NAME:				Texpandr
#
# FUNCTION:			A simple bash based text-expander for Linux
# URL:				https://github.com/yafp/texpandr/
#
# INSPIRED BY: 		https://github.com/leehblue/texpander
# CHANGES:			- Added Hide header option to zenity command
#					- support for blank in abbreviation filenames (adding -Q & eval)

APPNAME="Texpandr"
APPVERSION="20161118.02"

base_dir="${HOME}/.texpandr/"

abbrvs=$(ls $base_dir -Q)
name=$(eval zenity --list --title="$APPNAME" --hide-header --column=Abbreviations $abbrvs)

path=$base_dir$name

if [[ $name ]]
then
  pid=$(xdotool getwindowfocus getwindowpid)
  proc_name=$(cat /proc/$pid/comm)

  if [ -e "$path" ]
  then
    clipboard=$(xclip -selection clipboard -o)
    xclip -selection c -i "$path"

    if [[ $proc_name =~ ^(terminal|terminator) ]]
    then
      xdotool key ctrl+shift+v
    else
      xdotool key ctrl+v
    fi

    echo $clipboard | xclip -selection c
  else
    zenity --error --text="Abbreviation not found:\n$name"
  fi
fi
