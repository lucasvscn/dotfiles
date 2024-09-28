#!/bin/bash
#
# install-asdf.sh
#
# Install and configure asdf with my personal preferences.
#

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.1

# Load asdf
source "$HOME/.asdf/asdf.sh"

# NodeJS
asdf plugin add nodejs
latest_lts=$(asdf nodejs resolve lts --latest-available)
asdf install nodejs $latest_lts
asdf global nodejs $latest_lts

# Java
asdf plugin add java
asdf install java latest:temurin-21
asdf global java latest:temurin-21

