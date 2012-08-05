#! /usr/bin/env bash

# install packages
sudo apt-get install xmonad libghc-xmonad-contrib-dev

# configure our combined xmonad + mate session
cp xmonad.desktop /usr/share/applications/xmonad.desktop
cp xmonad-mate.desktop /usr/share/xessions/xmonad-mate.desktop
mateconftool-2 -s /desktop/mate/session/required_components/windowmanager xmonad --type string

# configure xmonad
cp xmonad.hs ~/.xmonad/xmonad.hs
xmonad --recompile

echo Hopefully xmonad+mate is configured. Try logging out and picking the xmonad+mate session when logging in.
