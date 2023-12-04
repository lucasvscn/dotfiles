# vim: filetype=sh

# Load all the functions
test -r ~/.dotfiles/functions && source $_

# History
HISTSIZE=9999
HISTFILESIZE=9999
HISTCONTROL=ignoreboth   # ignoredups and ignorespace
HISTTIMEFORMAT='%F %T '  # history with timestamp
shopt -s histappend      # append to (!overwrite) the history file

# Check window size after each command, update $LINES and $COLUMNS
shopt -s checkwinsize

# enable bash_completion
if ! shopt -oq posix; then
  test -r /usr/share/bash-completion/bash_completion && source $_
  test -r /etc/bash_completion && source $_
fi

test -r ~/.dotfiles/aliases && source $_
