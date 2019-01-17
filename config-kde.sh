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
    --group "PROFILE_Default" --key "EmailClient" "/usr/bin/thunderbird %u"
kwriteconfig5 --file emaildefaults \
    --group "PROFILE_Default" --key "TerminalClient" --type "bool" "false"

# Turn off alert noise when AC adapter is unplugged.
kwriteconfig5 --file powerdevil.notifyrc \
    --group 'Event/unplugged' --key 'Action' ''

# Turn off alert noise when trash is emptied.
kwriteconfig5 --file  plasma_workspace.notifyrc \
    --group 'Event/Trash: emptied' --key 'Action' ''


# Set lock screen background to black
kwriteconfig5 --file  kscreenlockerrc \
    --group 'Greeter' --key 'WallpaperPlugin' 'org.kde.color'
kwriteconfig5 --file  kscreenlockerrc \
    --group 'Greeter' --group 'Wallpaper' --group 'org.kde.color' --group 'General' \
    --key 'Color' '0,0,0'


# Narrower window drop shadows.
kwriteconfig5 --file breezerc \
    --group 'Common' --key 'ShadowSize' 'ShadowSmall'
# Default is 'ShadowLarge'
# $ kcmshell5 kwindecoration


# Turn off kwallet.
kwriteconfig5 --file kwalletrc \
    --group 'Wallet' --key 'Enabled' 'false'
kwriteconfig5 --file kwalletrc \
    --group 'Wallet' --key 'First Use' 'false'
# $ kchmshell5 kwalletconfig5
# https://unix.stackexchange.com/questions/196522/disable-kwallet-password-request-in-arch-plasma-5
# https://askubuntu.com/questions/47216/how-to-disable-kde-wallet
# https://github.com/ryanpcmcquen/linuxTweaks/blob/master/.kdeSetup.sh
