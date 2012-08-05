Setting up xmonad + mate for Linux Mint 13 'Maya'
=================================================

Mate is a forked and rebranded version of gnome 2.

Here are the files for a simple mate + xmonad session, where we fire up a mate session but replace the windowmanager with xmonad.

Most of this is straight forward, but we also need to port the XMonad.Contrib.Gnome module across to Mate. The ported version of this module is included inlined into the `xmonad.hs` config file.

Included files
--------------

    xmonad.desktop
    xmonad.hs
    xmonad-mate.desktop

Installation
------------

Run the `install_xmonad.sh` script to install the appropriate packages, copy the config files into the right places, and recompile xmonad. This will clobber your existing settings, if any, so watch out. It might be a better idea to use the install script as a guide only, and do all the configuration manually.


Thanks to
---------

*   Spencer Janssen, for the XMonad.Config.Gnome module. You can download a .tar.gz of the source from http://xmonad.org/download.html as part of the xmonad-contrib package.

*   Mark Hansen, for this blog post http://markhansen.co.nz/xmonad-ubuntu-lucid/ 

