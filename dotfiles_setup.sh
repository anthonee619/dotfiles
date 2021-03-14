#!/bin/bash

########################################################
###############  General  ##############################
########################################################
# neovim, docker, nodejs,

########################################################
###############  Desktop  ##############################
########################################################
# i3, lightdm, udiskie, fonts, light (AUR), feh, spotifyd


# add user to these groups
# video, audio, docker


directories=(".bin")
for direc in "${directories[@]}"; do
    mkdir ${HOME}/${direc}
done


dotfolder="${HOME}/.dotfiles"
# ${HOME}

#lightdm 
sudo ln -si ${dotfolder}/lightdm/lightdm.conf /etc/lightdm/lightdm

# ${HOME}/.config/
for configFolders in $dotfolder/config/*;do
  ln -si ${configFolders} ${HOME}/.config
done

ln -s $dotfolder/bin ${HOME}/.bin
for file in $dotfolder/home/*;do
  ln -si $file $HOME/.${file##*/}
done
