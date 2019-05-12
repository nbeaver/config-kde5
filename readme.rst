This is my configuration script for the KDE Plasma 5 desktop.
You will probably want to adjust it for your own use.

Similar:

https://github.com/ryanpcmcquen/linuxTweaks/blob/master/.kdeSetup.sh

https://github.com/Rokin05/nocturnal-kde

https://github.com/RaitaroH/Random-Code#kwin-custom-rules

Why not just track the full config files?
-----------------------------------------

There are many practical difficulties
with keeping configuration files under version control.
For example, some fields change often,
such as speedbar width
and pixel dimensions for dialog sizes in ``kdeglobals``.

By storing the configuration settings
as commands in an executable shell script,
it is easy to selectively apply settings to an existing workspace,
while keeping comments and context for the modifications.
