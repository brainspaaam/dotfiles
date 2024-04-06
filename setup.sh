#!/bin/bash
echo 'Setting up all configuration files............' && sleep 3
echo 'Setting up Bash Profile' && sleep 1
ln -sf /home/$USER/dotfiles/.bash_profile /home/$USER/
echo 'Setting up Bashrc' && sleep 1
ln -sf /home/$USER/dotfiles/.bashrc /home/$USER/
echo 'Setting up TMUX' && sleep 1
ln -sf /home/$USER/dotfiles/.tmux.conf /home/$USER/
echo 'Setting up Xinitrc' && sleep 1
ln -sf /home/$USER/dotfiles/.xinitrc /home/$USER/
echo 'Setting up Alacritty' && sleep 1
ln -sf /home/$USER/dotfiles/alacritty/ /home/$USER/.config/
echo 'Setting up Picom' && sleep 1
ln -sf /home/$USER/dotfiles/picom/ /home/$USER/.config/
echo 'Done!'
