#!/bin/bash

hypr = $HOME/.config/hypr
waybar = $HOME/.config/waybar
rofi = $HOME/.config/rofi

cp -r ./hypr/.config/hypr $HOME/.config
cp -r ./waybar/.config/waybar $HOME/.config
cp -r ./rofi/.config/rofi $HOME/.config

echo "Copied hypr, waybar, and rofi to $HOME/.config"
