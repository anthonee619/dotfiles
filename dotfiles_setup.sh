#!/bin/bash

directories=(".bin" ".config/i3" ".config/nvim")
for direc in "${directories[@]}"; do
    mkdir ${HOME}/${direc}
done

dotfolder="${HOME}/.dotfiles"
# ${HOME}
homeFiles=(".bashrc" ".Xresources" ".profile")
for dotfile in "${homeFiles[@]}";do
    ln -sf ${dotfolder}/${dotfile} ${HOME}
done

# ${HOME}/.config/
configFiles=("nvim/init.vim" "i3/config")
config="${HOME}/.config"
for dotfile in "${configFiles[@]}";do
    ln -sf ${dotfolder}/.config/${dotfile} ${config}/${dotfile} 
done

# ${HOME}/.bin/
for binFilePath in ${HOME}/.dotfiles/.bin/*;do
    binefilename="${binFilePath##*/}"
    ln -sf ${binFilePath} $HOME/.bin/$binefilename
done
