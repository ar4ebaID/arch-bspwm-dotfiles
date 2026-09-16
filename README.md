# Arch Linux + BSPWM dotfiles

A configuration with all the essential packages and themes for stable use as a work or home operating system.
All packages that will be installed are described in the PACKAGES and PACKAGES-YAY files.
yay is also installed automatically during the install_dotfiles.sh installation script.
**P.S. Before running the installation script, be sure to edit the dualmon, nvidia-status, and set-wallpapers scripts to match your configuration!**
**P.P.S. After rebooting and logging in, you may need to manually apply the installed system themes via the lxappearance application.**

------

## Instructions

1. Install the git package: `sudo pacman -S git`.
2. Clone this repository: `git clone https://github.com/ar4ebaID/arch-bspwm-dotfiles.git`.
3. Edit the scripts and the list of packages to install in **PACKAGES** according to your PC.
4. Navigate to the cloned repository: `cd arch-bspwm-dotfiles/`.
5. Grant execution permissions to the installation script: `chmod +x install_dotfiles.sh`.
6. Run the installation script: `./install_dotfiles.sh`.
7. Follow the prompts during the process and wait for the notification in the command line that the installation is complete.
8. Reboot.

------

![Screen1](Images/os-img1.png)
![Screen2](Images/os-img2.png)