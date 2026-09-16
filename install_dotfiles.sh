#!/bin/bash


cd $HOME

sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si
cd $HOME
rm -rf yay/

mkdir .config
mkdir .local
mkdir .local/share
mkdir .local/share/icons
mkdir Images
sudo mkdir /usr/share/icons 

cp -r arch-bspwm-dotfiles/config/* .config/
cp -r arch-bspwm-dotfiles/WinSur-white-cursors .local/share/icons
cp -r arch-bspwm-dotfiles/Images/Wallpapers Images/
sudo cp -r arch-bspwm-dotfiles/Mytheme /usr/share/icons/
sudo chown -R $USER:$USER /usr/share/icons/Mytheme

sudo rm /etc/X11/xorg.conf.d/00-keyboard.conf
sudo cp arch-bspwm-dotfiles/00-keyboard.conf /etc/X11/xorg.conf.d/

sudo sed -i '/^#\[multilib\]/{s/^#//; n; s/^#//}' /etc/pacman.conf
sudo pacman -Syu

cd arch-bspwm-dotfiles/
sudo pacman -S --needed - < PACKAGES
yay -S - < PACKAGES-YAY
cd $HOME

sudo rm /etc/lightdm/lightdm-gtk-greeter.conf
sudo cp arch-bspwm-dotfiles/lightdm/* /etc/lightdm/
sudo chown $USER:$USER /etc/lightdm/wall5-lightdm.jpg

chsh -s /usr/bin/fish
sudo chsh -s /usr/bin/fish

sudo rm /usr/share/applications/hiddify.desktop
sudo cp arch-bspwm-dotfiles/hiddify.desktop /usr/share/applications/

systemctl enable lightdm.service

rm -rf arch-bspwm-dotfiles/

echo
echo "========================="
echo " Successful installation "
echo "========================="