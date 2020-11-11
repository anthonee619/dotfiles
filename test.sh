#!/bin/bash

for configFolders in ${HOME}/.dotfiles/config/*;do
  ln -s ${configFolders} ${HOME}/.config
done

