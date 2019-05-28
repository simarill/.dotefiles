# default system config
alias lock='gnome-screensaver-command -l'

# typos...
alias gti='git'

# git aliases
alias gs='git status'
alias gb='git branch'
alias gco='git checkout'
alias gc='git commit'
alias gl='git log'
alias gd='git diff'
alias gri='git rebase -i'

# Always use neovim instead of vim or vi
alias vim='nvim'
alias vi='nvim'

# from applcations
alias ag='ag --smart-case --hidden'
alias flameshot='flameshot gui'
alias ls='ls -alh'
alias tree1='tree -L 1'

# Go to project root
function up {
  while [ ! -d .git ] && [ '$PWD' != '/' ]; do
    cd ..
  done
}

# open file in  browser
alias open='xdg-open'

#open nvim config
alias vc='vim ~/.config/nvim/init.vim'

#open nvim config
alias ic='vim ~/.config/i3/config'

# tree ingnore node_modules
alias tree='tree -I node_modules*'
