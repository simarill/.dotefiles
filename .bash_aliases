# typos...
alias gti='git'

# Always use neovim instead of vim or vi
alias vim='nvim'
alias vi='nvim'

alias ag='ag --smart-case --hidden'

# Go to project root
function up {
  while [ ! -d .git ] && [ "$PWD" != "/" ]; do
    cd ..
  done
}

# open file in  browser
alias open='xdg-open'

#open nvim config
alias vc='vim ~/.config/nvim/init.vim'

# tree ingnore node_modules
alias tree='tree -I node_modules*'

# find all unused scss variables in a folder
alias fus="bash ~/find_unused_variables.sh"
