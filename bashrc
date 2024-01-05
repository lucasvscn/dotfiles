
source ~/.dotfiles/functions
source ~/.dotfiles/aliases

export GPG_TTY=$(tty)

add_to_path top $HOME/.dotfiles/bin
add_to_path top $HOME/.local/bin

# asdf
[ -f ~/.asdf/asdf.sh ] && source ~/.asdf/asdf.sh
[ -f "$HOME/.asdf/completions/asdf.bash" ] && source "$HOME/.asdf/completions/asdf.bash"

# set JAVA_HOME
[ -f ~/.asdf/plugins/java/set-java-home.bash ] && source ~/.asdf/plugins/java/set-java-home.bash
