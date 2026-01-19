### ThePrimeagen's init.lua
Ensure that you do both the OS Specific tasks AND the Common tasks.

###You MUST set a HOME environment variable that points to the users home directory

### Linux
## Update the OS
```
sudo apt -y update
```

## Install required apps
```
sudo apt -y install git ripgrep pavucontrol xclip jq shutter python3 python3-pip pipx nodejs
git clone https://github.com/gavinbaumanis/99.git $HOME/workspace/99
git clone https://github.com/nvim-lua/plenary.nvim.git $HOME/workspace/plenary.nvim
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
wget --output-document /tmp/luarocks.tar.gz https://luarocks.org/releases/luarocks-3.11.0.tar.gz
tar zxpf /tmp/luarocks.tar.gz -C /tmp
cd /tmp/luarocks-3.11.0
./configure && make && sudo make install
```



### WINDOWS
## Install required apps
winget install BurntSushi.ripgrep.MSVC
winget install python3
winget install pipx
winget install OpenJS.NodeJS.LTS

git clone https://github.com/gavinbaumanis/99.git %HOME%/workspace/99
git clone https://github.com/nvim-lua/plenary.nvim.git %HOME%/workspace/plenary.nvim

## Install MS Build Tools
Download and run the installer from: (You only ned to install the C++ Desktop option.)
https://aka.ms/vs/stable/vs_BuildTools.exe

##Install lua
Download lua 5.1 from 
https://sourceforge.net/projects/luabinaries/files/5.1.5/Windows%20Libraries/Static/lua-5.1.5_Win64_vc17_lib.zip/download

Extract it to an appropriate destination:
`c:\Users\GavinBaumanis\bin\lua`

Ensure you add `c:\Users\GavinBaumanis\bin\lua` to the PATH.

## Download LuaRocks
download it from:
`https://luarocks.github.io/luarocks/releases/luarocks-3.13.0-windows-64.zip`

## Install luaRocks
Extract the ZIP to the `c:\Users\GavinBaumanis\bin\lua` directory.

## Install Rust
Install by running the installer that you can ge from:
`https://static.rust-lang.org/rustup/dist/x86_64-pc-windows-msvc/rustup-init.exe`

## Install Prettier
npm -g install prettier
prettier --version




### COMMON: Prerequisite git repositories:
pipx install tldr
cargo install stylua --features luajit
luarocks install luacheck




[The full video of ThePrimeagen setting up this repo](https://www.youtube.com/watch?v=w7i4amO_zaE)
