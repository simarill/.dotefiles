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

