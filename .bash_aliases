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
alias vimconf='vim ~/.config/nvim/init.vim'
