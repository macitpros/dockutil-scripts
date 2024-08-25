#!/bin/bash

# Version: 1.0

# Items to add
/usr/local/bin/dockutil --add /Applications/Google\ Chrome.app --position 1 --no-restart --allhomes
dockutil --add '~/Downloads' --view grid --display folder --no-restart --allhomes

# Items to remove
/usr/local/bin/dockutil --remove 'System Preferences' --no-restart --allhomes
/usr/local/bin/dockutil --remove 'Safari'  --no-restart --allhomes
/usr/local/bin/dockutil --remove 'Mail' --no-restart --allhomes

# Items to move
# /usr/local/bin/dockutil --move 'Safari' --position 1 --no-restart --allhomes

killall Dock