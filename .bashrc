# vim : set ts=2 sw=2 et :

# Load shell functions and aliases
[ -f "$HOME/.dotfiles/shell/functions" ] && \
  source "$HOME/.dotfiles/shell/functions"
[ -f "$HOME/.dotfiles/shell/aliases" ] && \
  source "$HOME/.dotfiles/shell/aliases"

# Load asdf
if [ -f "$HOME/.asdf/asdf.sh" ]; then
  source "$HOME/.asdf/asdf.sh"
  source "$HOME/.asdf/completions/asdf.bash"

  # Set JAVA_HOME
  source "$HOME/.asdf/plugins/java/set-java-home.bash"
fi

# Make sure SSH agent is running
if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi

# Set GPG TTY
export GPG_TTY=$(tty)

# Set VIm as default editor
export EDITOR=vim

# Set PATH
add_to_path -f "$HOME/.config/composer/vendor/bin"
add_to_path -f "$HOME/.local/bin"
add_to_path -f "$HOME/bin"

