#!/usr/bin/env bash
# vim: set ts=2 sw=2 et:
#
# Install script for the dotfiles.
#

# Set the dotfiles directory
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

# Install asdf version manager
if [ ! -d ~/.asdf ]; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
fi

# Install asdf plugins
source $HOME/.asdf/asdf.sh
asdf plugin-add nodejs
asdf plugin-add java

# Install asdf nodejs
asdf nodejs update-nodebuild
asdf install nodejs $(asdf nodejs resolve lts --latest-available)
asdf global nodejs $(asdf nodejs resolve lts --latest-available)

# Install asdf java 17 and 21 (latest)
asdf install java latest:temurin-17
asdf install java latest:temurin-21
asdf global java latest:temurin-21

# Make a backup of the current dotfiles
echo "Creating a backup of the current dotfiles..."
for file in $DOTFILES_DIR/.*; do
  # ignore if file is a symlink
  if [ -L $HOME/$(basename $file) ]; then
    continue
  fi

  if [ -f $file ] && [ -f $HOME/$(basename $file) ]; then
    cp -iv $HOME/$(basename $file){,.orig} 
  fi
done

# Create symlinks for the dotfiles
# Exclude the .git directory
for file in $DOTFILES_DIR/.*; do
  if [ -f $file ] && [ ! -d $file ]; then
    ln -sfv $file $HOME/
  fi
done

