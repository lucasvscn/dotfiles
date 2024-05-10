# vim: ft=sh

# Set the default editor
export EDITOR=vim

# Set the default pager
export PAGER=less

# GPG
export GPG_TTY=$(tty)

# SSH agent
if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval $(ssh-agent -s)
fi

# Set path to the directory where this file is located
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Load functions and aliases
[ -f $DOTFILES_DIR/functions ] && source $DOTFILES_DIR/functions
[ -f $DOTFILES_DIR/aliases ] && source $DOTFILES_DIR/aliases

# Add some directories to the PATH
add_to_path top $HOME/bin
add_to_path top $HOME/.local/bin
add_to_path top $HOME/.config/composer/vendor/bin

# Enable asdf
[ -f ~/.asdf/asdf.sh ] && source ~/.asdf/asdf.sh
[ -f ~/.asdf/completions/asdf.bash ] && source ~/.asdf/completions/asdf.bash
