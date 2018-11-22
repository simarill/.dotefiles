# Place custom stuff in ~/.bashrc_aliases
if [ -f ~/.bashrc_aliases ]; then
  . ~/.bashrc_aliases
fi

# add key to ssh-agent 
# thanks to AddKeysToAgent yes in .ssh/config
[ -z "$SSH_AUTH_SOCK" ] && eval $(ssh-agent) 1> /dev/null
