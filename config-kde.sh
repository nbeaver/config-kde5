#! /usr/bin/env sh

# Disable Recent Documents tracking.
# https://forum.kde.org/viewtopic.php?t=119324
# ~/.kde/share/apps/RecentDocuments/
# ~/.local/share/recently-used.xbel
kwriteconfig --group RecentDocuments --key UseRecent false
