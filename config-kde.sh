#! /usr/bin/env sh

# Disable Recent Documents tracking.
# https://forum.kde.org/viewtopic.php?t=119324
# https://askubuntu.com/questions/957804/increasing-the-number-of-recently-used-items-in-kde
# ~/.kde/share/apps/RecentDocuments/
# ~/.local/share/RecentDocuments
# ~/.local/share/recently-used.xbel
kwriteconfig --group RecentDocuments --key UseRecent false
kwriteconfig5 --group RecentDocuments --key UseRecent false

# Use "Recently used" for window sort order, not "Stacking order".
kwriteconfig5 --file ~/.config/kwinrc --group TabBox --key SwitchingMode 0

# Use Xrender instead of OpenGL to prevent flickering.
kwriteconfig5 --file ~/.config/kwinrc --group Compositing --key Backend XRender
# https://bugs.kde.org/show_bug.cgi?id=384660
# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=854372

# Set the background color to a nice reddish brown.
kwriteconfig5 --file ~/.config/plasma-org.kde.plasma.desktop-appletsrc \
    --group Containments --group 1 --group Wallpaper --group org.kde.color \
    --group General --key Color "152,39,29"
