prefix=/usr/local/games/maturuturu_studios
prefixbin=/usr/local/bin
prefixicon=/usr/share/icons/hicolor/128x128/apps/
prefixdesktop=/usr/share/applications

cd $HOME
echo "Uninstalling..."
echo "Asking for permissions"
sudo echo -n
sudo rm -Rf $prefix/*
sudo rmdir $prefix
sudo rm -rf $prefixbin/drop
sudo rm -rf $prefixbicon/maturuturu_drop.png
sudo rm -rf $prefixdesktop/drop.desktop
