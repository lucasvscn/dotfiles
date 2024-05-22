#!/bin/bash
# vim: set ts=2 sw=2 sts=2 et:

# Install VIm NerdTree
if [ ! -d ~/.vim/pack/vendor/start/nerdtree ]; then
  git clone https://github.com/preservim/nerdtree.git \
    ~/.vim/pack/vendor/start/nerdtree

  vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
fi

# Install VIm Ctrlp
if [ ! -d ~/.vim/pack/vendor/start/ctrlp ]; then
  git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git \
    ~/.vim/pack/plugins/start/ctrlp
fi
