#!/bin/bash

# Install the following packages
# neovim, i3, lightdm, fonts*, light (AUR), docker, nodejs

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

ln -s $dotfolder/bin ${HOME}/scripts/
for file in $dotfolder/home/*;do
  ln -si $file $HOME/.${file##*/}
done
