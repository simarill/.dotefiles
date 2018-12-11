# copy relevant files of this project to right locations
cp .bash_aliases ~/.bash_aliases
cp .config/nvim/init.vim ~/.config/nvim/init.vim
cp .ssh/config ~/.ssh/config

# Copy content of .bashrc to ~/.bachrc
cat .bashrc ~/.bashrc > newbashrc
rm ~/.bashrc
mv newbashrc ~/.bashrc

