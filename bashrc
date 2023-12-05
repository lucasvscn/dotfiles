# vim: filetype=sh

# Load all the functions
test -r ~/.dotfiles/functions && source $_

add_to_path top $HOME/.dotfiles/bin

# History
HISTSIZE=9999
HISTFILESIZE=9999
HISTCONTROL=ignoreboth   # ignoredups and ignorespace
HISTTIMEFORMAT='%F %T '  # history with timestamp
shopt -s histappend      # append to (!overwrite) the history file

# Check window size after each command, update $LINES and $COLUMNS
shopt -s checkwinsize

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

# enable bash_completion
if ! shopt -oq posix; then
  test -r /usr/share/bash-completion/bash_completion && source $_
  test -r /etc/bash_completion && source $_
fi

test -r ~/.dotfiles/aliases && source $_
