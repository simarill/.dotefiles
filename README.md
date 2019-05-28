# dotfiles

## Useful Tools

Command-line fuzzy Finder [fzf](https://github.com/junegunn/fzf)  
Vim's multi-file search Improvement [Ferret](https://github.com/wincent/ferret)  
Aligning text [Tabular](http://vimcasts.org/episodes/aligning-text-with-tabular-vim/)  

## setproxy

``` bash
export http_proxy={proxyip}:{proxyport}
echo $http_proxy
export https_proxy={proxyip}:{proxyport}
echo $https_proxy
```

## bash installations

``` bash
sudo -E apt install neovim silversearcher-ag tree tldr tmux i3 gnome-control-center gnome-tweaks
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo -E apt install make
```

``` bash 
cd ~/Documents
git clone https://github.com/csxr/i3-gnome.git
cd i3-gnome
sudo -E make install

```
``` bash
cd ~/Documents
git clone https://github.com/pavanjadhaw/betterlockscreen
cd betterlockscreen
cp betterlockscreen ~/.local/bin/

cd ~/Documents
https://github.com/UtkarshVerma/installer-scripts.git
cd installer-scripts
bash betterlockscreen.sh
```

## setups

```
ssh-keygen -o -t rsa -b 4096 -C "example.example@email.com"

git config --global user.name ""
git config --global user.email ""
git config --global core.excludesfile ~/.gitignore_global
git config --global core.editor "vim"
```


## i3 navigaiton

[Cheat Sheet](https://i3wm.org/docs/refcard.html)

