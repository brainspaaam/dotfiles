#!/bin/bash
echo 'Creating symlinks.........'
echo 'Symlink .bash_profile'
ln -sf /home/$USER/dotfiles/.bash_profile /home/$USER/
echo 'Symlink .bashrc'
ln -sf /home/$USER/dotfiles/.bashrc /home/$USER/
echo 'Symlink .tmux.conf'
ln -sf /home/$USER/dotfiles/.tmux.conf /home/$USER/
echo 'Symlink .xinitrc'
ln -sf /home/$USER/dotfiles/.xinitrc /home/$USER/
echo 'Symlink alacritty'
mkdir -p /home/$USER/.config/alacritty/
ln -sf /home/$USER/dotfiles/alacritty.toml /home/$USER/.config/alacritty/

echo 'Done!'
