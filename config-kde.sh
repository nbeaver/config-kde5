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
