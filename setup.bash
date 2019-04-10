# copy relevant files of this project to right locations
cp .bash_aliases ~/.bash_aliases
cp .config/nvim/init.vim ~/.config/nvim/init.vim
cp find_unused_variables.sh ~/find_unused_variables.sh
cp .ssh/config ~/.ssh/config
cp .tmux.conf ~/.tmux.conf

# Copy content of .bashrc to ~/.bachrc
cat .bashrc ~/.bashrc > newbashrc
rm ~/.bashrc
mv newbashrc ~/.bashrc

