#! /usr/bin/env sh

# Disable Recent Documents tracking.
# https://forum.kde.org/viewtopic.php?t=119324
# https://askubuntu.com/questions/957804/increasing-the-number-of-recently-used-items-in-kde
# ~/.kde/share/apps/RecentDocuments/
# ~/.local/share/RecentDocuments
# ~/.local/share/recently-used.xbel
kwriteconfig --group RecentDocuments --key UseRecent false
kwriteconfig5 --group RecentDocuments --key UseRecent false

# Use Firefox browser for http and https URLs.
kwriteconfig5 --file kdeglobals --group 'General' --key 'BrowserApplication' 'firefox.desktop'

# Use "Recently used" for window sort order, not "Stacking order".
kwriteconfig5 --file kwinrc --group TabBox --key SwitchingMode 0

# Use Xrender instead of OpenGL to prevent flickering.
kwriteconfig5 --file kwinrc --group Compositing --key Backend XRender
# https://bugs.kde.org/show_bug.cgi?id=384660
# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=854372

# Set the background color to a nice reddish brown.
kwriteconfig5 --file plasma-org.kde.plasma.desktop-appletsrc \
    --group Containments --group 1 --group Wallpaper --group org.kde.color \
    --group General --key Color "152,39,29"

# Set Thunderbird as the default email reader.
kwriteconfig5 --file emaildefaults \
    --group "Defaults" --key "Profile" "Default"
kwriteconfig5 --file emaildefaults \
    --group "PROFILE_Default" --key "EmailClient" "/usr/bin/thunderbird"
kwriteconfig5 --file emaildefaults \
    --group "PROFILE_Default" --key "TerminalClient" --type "bool" "false"
