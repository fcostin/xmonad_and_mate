Setting up xmonad + mate for Linux Mint 13 'Maya'
=================================================

Mate is a forked and rebranded version of gnome 2.

Here are the files for a simple mate + xmonad session, where we fire up a mate session but replace the windowmanager with xmonad.

Most of this is straight forward, but we also need to port the XMonad.Contrib.Gnome module across to Mate. The ported version of this module is included inlined into the `xmonad.hs` config file included.

Included files
--------------

    Makefile
    xmonad.desktop
    xmonad.hs
    xmonad-mate.desktop

Installation
------------

The default target of the included Makefile will install `xmonad` packages as necessary using `apt`, copy the configuration files to the correct places, and recompile the `xmonad` settings. This will clobber any existing settings you may have if they are in place. You might want to inspect the `Makefile` first.

In any case, to install, just run

    sudo make

Basic Keyboard shortcuts
------------------------

Hit alt+space to cycle through layouts. Hit alt+tab to change window. Hit alt+1 ... alt+9 to switch to workspace 1 ... 9. Hit alt+shift+1 ... alt+shift+9 to send the active window to the specified workspace. Hit alt+shift+enter to open a new `mate_terminal`. Hit alt+p for the `run program` dialog. Hit `alt+shift+q` to logout. Have fun.

Thanks to
---------

*   Spencer Janssen, for the XMonad.Config.Gnome module. You can download a .tar.gz of the source from http://xmonad.org/download.html as part of the xmonad-contrib package.

*   Mark Hansen, for this blog post http://markhansen.co.nz/xmonad-ubuntu-lucid/ 

