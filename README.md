### ThePrimeagen's init.lua

### Prerequisite OS ENV: 
Ensure that you have the following environment variable "HOME" set correctly to you home directory. Once set close and reopen your shell.

### Linux
## Update the OS and install required libraries
sudo apt -y update
sudo apt -y install git ripgrep pavucontrol xclip jq shutter python3-pip pipx
pipx install tldr


### WINDOWS
winget install BurntSushi.ripgrep.MSVC

### COMMON: Prerequisite git repositories:
git clone https://github.com/ThePrimeagen/harpoon.git $HOME/workspace/harpoon
cd $HOME/workspace/harpoon
git fetch
git checkout harpoon2
git clone https://github.com/gavinbaumanis/99.git $HOME/workspace/99

[The full video of ThePrimeagen setting up this repo](https://www.youtube.com/watch?v=w7i4amO_zaE)
