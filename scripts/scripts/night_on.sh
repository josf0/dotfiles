#!/bin/zsh

if [ $(hyprctl hyprsunset temperature) = 6000 ]; then
    hyprctl hyprsunset temperature 4500
else 
    hyprctl hyprsunset temperature 6000
fi
