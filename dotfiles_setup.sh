#!/bin/bash

directories=(".bin")
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
!! ln -sf ${dotfolder}/lightdm/lightdm.conf /etc/lightdm/lightdm

# ${HOME}/.config/
for configFolders in ${HOME}/.dotfiles/config/*;do
  ln -s ${configFolders} ${HOME}/.config
done

# ${HOME}/.bin/
for binFilePath in ${HOME}/.dotfiles/bin/*;do
    binefilename="${binFilePath##*/}"
    ln -sf ${binFilePath} $HOME/.bin/$binefilename
done
