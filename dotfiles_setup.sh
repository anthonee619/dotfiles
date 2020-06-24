#!/bin/bash

dotfolder="${HOME}/.dotfiles"
# ${HOME}
homeFiles=(".bashrc")
for dotfile in "${homeFiles[@]}";do
    ln -sf ${dotfolder}/${dotfile} ${HOME}
done

# ${HOME}/.config/
configFiles=("nvim/init.vim" "i3/config")
config="${HOME}/.config"
for dotfile in "${configFiles[@]}";do
    ln -sf ${dotfolder}/.config/${dotfile} ${config}/${dotfile} 
done
