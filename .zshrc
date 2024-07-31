# vim: ts=2 sw=2 et ft=sh :

# ------------------------------------------------------------------
# Manjaro default zshrc
# ------------------------------------------------------------------

# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# ------------------------------------------------------------------
# My Settings
# ------------------------------------------------------------------

source ~/.dotfiles/shell/functions
source ~/.dotfiles/shell/aliases

add_to_path -f $HOME/.config/composer/vendor/bin
add_to_path -f $HOME/.local/bin

[ -f $HOME/.asdf/asdf.sh ] && source $HOME/.asdf/asdf.sh

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

# JAVA_HOME
. ~/.asdf/plugins/java/set-java-home.zsh

# Set default editor
export EDITOR="nvim"

export PAGER="less"
export GPG_TTY=$(tty)

# SSH agent
if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval $(ssh-agent -s) > /dev/null
fi

