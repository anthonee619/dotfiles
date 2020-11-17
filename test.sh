#!/bin/bash

for file in $HOME/.dotfiles/home/*;do
  ln -s $file $HOME/.${file##*/}
done
