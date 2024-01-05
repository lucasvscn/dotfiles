
source ~/.dotfiles/functions
source ~/.dotfiles/aliases

export GPG_TTY=$(tty)

add_to_path top $HOME/.dotfiles/bin
add_to_path top $HOME/.local/bin

# enable asdf
if [ -f ~/.asdf/asdf.sh ]; then
  . ~/.asdf/asdf.sh
fi

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit

# set JAVA_HOME
[ -f ~/.asdf/plugins/java/set-java-home.zsh ] && source ~/.asdf/plugins/java/set-java-home.zsh