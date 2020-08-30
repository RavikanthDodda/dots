#!/bin/bash

program=$(cat ~/.config/rofi/program_list.txt | rofi -dmenu -p "select program")
prime-run $program
