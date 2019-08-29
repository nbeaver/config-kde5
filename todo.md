- [ ] Disable "Expand search to bookmarks, files, and emails" in the kickoff search.

    Problem: the 'Containments' and 'Applets' group is unpredictable.

    Rought draft:

    # ~/.config/plasma-org.kde.plasma.desktop-appletsrc
    applet_plugin=$(kreadconfig5 --file plasma-org.kde.plasma.desktop-appletsrc \
        --group Containments --group 2 --group Applets --group 3 \
        --key 'plugin')
    err_status=$?

    if test "${applet_plugin}" = 'org.kde.plasma.kickoff'
    then
        kwriteconfig5 --file plasma-org.kde.plasma.desktop-appletsrc \
            --group 'Containments' --group 2 --group Applets --group 3 --group Configuration --group General \
            --key 'useExtraRunners' 'false'
    else
        printf "Error: cannot find 'org.kde.plasma.kickoff' in 'plasma-org.kde.plasma.desktop-appletsrc'\n"
    fi
