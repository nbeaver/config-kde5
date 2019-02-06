#! /usr/bin/env sh

# Disable Recent Documents tracking.
# https://forum.kde.org/viewtopic.php?t=119324
# https://askubuntu.com/questions/957804/increasing-the-number-of-recently-used-items-in-kde
# ~/.kde/share/apps/RecentDocuments/
# ~/.local/share/RecentDocuments
# ~/.local/share/recently-used.xbel
kwriteconfig --file kdeglobals --group RecentDocuments --key UseRecent false
kwriteconfig5 --file kdeglobals --group RecentDocuments --key UseRecent false
# Apparently no kcmshell5 command?

# Use Firefox browser for http and https URLs.
kwriteconfig5 --file kdeglobals --group 'General' --key 'BrowserApplication' 'firefox.desktop'
# $ kcmshell5 componentchooser

# Use "Recently used" for window sort order, not "Stacking order".
kwriteconfig5 --file kwinrc --group TabBox --key SwitchingMode 0
# $ kcmshell5 kwintabbox

# Use Xrender instead of OpenGL to prevent flickering.
kwriteconfig5 --file kwinrc --group Compositing --key Backend XRender
# https://bugs.kde.org/show_bug.cgi?id=384660
# https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=854372
# $ kcmshell5 kwincompositing

# Use fastest animation speed.
kwriteconfig5 --file kwinrc --group Compositing --key 'AnimationSpeed' '0'
# $ kcmshell5 kwincompositing

# Disable sliding popup effect.
kwriteconfig5 --file kwinrc --group Plugins --key 'slidingpopupsEnabled' --type 'bool' 'false'
# $ kcmshell5 kcmkwineffects

# Disable compositor (Keyboard shortcut: Shift-Alt-F12)
kwriteconfig5 --file kwinrc --group 'Compositing' --key 'enabled' --type 'bool' 'false'
# $ kcmshell5 kwincompositing
# https://superuser.com/questions/1001397/reduce-visual-effects-in-kde-plasma

# Set the background color to a nice reddish brown.
kwriteconfig5 --file plasma-org.kde.plasma.desktop-appletsrc \
    --group Containments --group 1 --group Wallpaper --group org.kde.color \
    --group General --key Color "152,39,29"
# Apparently no kcmshell5 module.

# Set Thunderbird as the default email reader.
kwriteconfig5 --file emaildefaults \
    --group "Defaults" --key "Profile" "Default"
kwriteconfig5 --file emaildefaults \
    --group "PROFILE_Default" --key "EmailClient" "/usr/bin/thunderbird %u"
kwriteconfig5 --file emaildefaults \
    --group "PROFILE_Default" --key "TerminalClient" --type "bool" "false"
# $ kcmshell5 componentchooser

# Turn off alert noise when AC adapter is unplugged.
kwriteconfig5 --file powerdevil.notifyrc \
    --group 'Event/unplugged' --key 'Action' ''
# $ kcmshell5 kcmnotify

# Turn off alert noise when trash is emptied.
kwriteconfig5 --file  plasma_workspace.notifyrc \
    --group 'Event/Trash: emptied' --key 'Action' ''
# $ kcmshell5 kcmnotify

# Turn off alerts for console bells.
kwriteconfig5 --file  konsole.notifyrc \
    --group 'Event/BellInvisible' --key 'Action' ''
kwriteconfig5 --file  konsole.notifyrc \
    --group 'Event/BellVisible' --key 'Action' ''
# $ kcmshell5 kcmnotify

# Set lock screen background to black
kwriteconfig5 --file  kscreenlockerrc \
    --group 'Greeter' --key 'WallpaperPlugin' 'org.kde.color'
kwriteconfig5 --file  kscreenlockerrc \
    --group 'Greeter' --group 'Wallpaper' --group 'org.kde.color' --group 'General' \
    --key 'Color' '0,0,0'
# $ kcmshell5 screenlocker


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
# https://unix.stackexchange.com/questions/450731/disable-kde-wallet-from-the-command-line
# https://askubuntu.com/questions/47216/how-to-disable-kde-wallet
# https://github.com/ryanpcmcquen/linuxTweaks/blob/master/.kdeSetup.sh

# Disable file indexing by baloofile.
kwriteconfig5 --file kcmshell5rc \
    --group 'Basic Settings' --key 'Indexing-Enabled' 'false'

kwriteconfig5 --file baloofilerc \
    --group 'Basic Settings' --key 'Indexing-Enabled' 'false'
