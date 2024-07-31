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

# install asdf
. "$HOME/.asdf/asdf.sh"

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

# JAVA_HOME
. ~/.asdf/plugins/java/set-java-home.zsh

# Set default editor
export EDITOR="nvim"

alias vi="vim"
alias vim="nvim"

alias zshconfig="nvim ~/.zshrc && source ~/.zshrc"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ls="ls --color=auto --group-directories-first"
alias la="ls -a"
alias ll="ls -lh"
alias lla="ls -lha"

