# texpandr

## Function
Texpandr is a simple text expander for Linux. It is sort of like Autokey, except it works off of text files that you put in you ~/.texpandr directory. Texpandr is a bash script that uses xclip, xdotool, and zenity to let you type an abbreviation for something and it expands to whatever you have in the matching text file.

## Requirements
- xdotool
- xclip
- zenity

## Installation
- Download the latest version from https://github.com/yafp/texpandr/archive/master.zip
- Extract the archive
- Copy texpandr.sh to your desired location
- Define a shortcut to trigger/execute texpandr.sh
- Create a note directory .texpandr in your HOME directory

## Usage
The text expansion files reside in your ~/.texpandr directory. Name the files in the format of abbreviation.txt where abbreviation is the thing you want to type and the content of the file is what you want to have pasted into your document.

## Credit
Texpandr is heavily inspired by Texpander (https://github.com/leehblue/texpander)
