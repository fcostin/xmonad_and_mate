Setting up xmonad + mate for Linux Mint 13 'Maya'
=================================================

Mate is a forked and rebranded version of gnome 2.

Here are the files for a simple mate + xmonad session, where we fire up a mate session but replace the windowmanager with xmonad.

Most of this is straight forward, but we also need to port the XMonad.Contrib.Gnome module across to Mate. The ported version of this module is included inlined into the `xmonad.hs` config file.

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

Thanks to
---------

*   Spencer Janssen, for the XMonad.Config.Gnome module. You can download a .tar.gz of the source from http://xmonad.org/download.html as part of the xmonad-contrib package.

*   Mark Hansen, for this blog post http://markhansen.co.nz/xmonad-ubuntu-lucid/ 

