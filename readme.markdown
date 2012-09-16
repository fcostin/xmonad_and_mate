Setting up xmonad + mate for Linux Mint 13 'Maya'
=================================================

Mate is a forked and rebranded version of gnome 2 distributed with Linux Mint 13 'Maya'.

Here are the files for a simple mate + xmonad session, where we fire up a mate session but replace the windowmanager with xmonad.

Getting things to work under Mate seems mostly straight forward. The one painful step required is to port the XMonad.Contrib.Gnome module across to Mate, since Mate has renamed all of Gnome's internals to be called by new names. The ported version of this configuraiton module is included inlined into the `xmonad.hs` file included.

Included files
--------------

    Makefile
    xmonad.desktop
    xmonad.hs
    xmonad-mate.desktop

Issues
------

The `mateconf-2` step in the `Makefile` seems to be broken. Perhaps it doesn't work properly when run via `sudo`. The command seems to work fine when bashed directly into the terminal...

Installation
------------

    git clone git://github.com/fcostin/xmonad_and_mate.git
    cd xmonad_and_mate
    sudo make

The default target of the included Makefile will install `xmonad` packages as necessary using `apt`, copy the configuration files to the correct places, and recompile the `xmonad` settings. This will clobber any existing settings you may have if they are in place. You might want to inspect the `Makefile` first.


Basic Keyboard shortcuts
------------------------

Hit alt+space to cycle through layouts. Hit alt+tab to change window. Hit alt+1 ... alt+9 to switch to workspace 1 ... 9. Hit alt+shift+1 ... alt+shift+9 to send the active window to the specified workspace. Hit alt+shift+enter to open a new `mate_terminal`. Hit alt+p for the `run program` dialog. Hit `alt+shift+q` to logout. Have fun.

More tweaks
-----------

### Hide desktop icons

Despite the file manager `nautilus` being renamed to `caja`, and `gconftool-2` renamed to `mateconftool-2`, we can still issue an equivalent command to disable the desktop:

    mateconftool-2 -s /apps/caja/preferences/show_desktop false --type boolean



Thanks to
---------

*   Spencer Janssen, for the XMonad.Config.Gnome module. You can download a .tar.gz of the source from http://xmonad.org/download.html as part of the xmonad-contrib package.

*   Mark Hansen, for this blog post http://markhansen.co.nz/xmonad-ubuntu-lucid/ 

