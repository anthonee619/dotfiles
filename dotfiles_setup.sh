#!/bin/bash

directories=(".bin" ".config/i3" ".config/nvim" ".config/termite" ".config/polybar")
for direc in "${directories[@]}"; do
    mkdir ${HOME}/${direc}
done


dotfolder="${HOME}/.dotfiles"
# ${HOME}
homeFiles=(".bashrc" ".bash_profile" ".xinitrc" ".Xresources")
for dotfile in "${homeFiles[@]}";do
    ln -sf ${dotfolder}/${dotfile} ${HOME}
done

#lightdm 
ln -sf ${dotfolder}/lightdm/lightdm.conf /etc/lightdm/lightdm

# ${HOME}/.config/
configFiles=("nvim/init.vim" "i3/config" "termite/config" "polybar/config")
config="${HOME}/.config"
for dotfile in "${configFiles[@]}";do
    ln -sf ${dotfolder}/config/${dotfile} ${config}/${dotfile} 
done

# ${HOME}/.bin/
for binFilePath in ${HOME}/.dotfiles/bin/*;do
    binefilename="${binFilePath##*/}"
    ln -sf ${binFilePath} $HOME/.bin/$binefilename
done
