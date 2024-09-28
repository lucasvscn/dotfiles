#!/bin/sh

git clone https://github.com/github/copilot.vim.git \
  ~/.vim/pack/github/start/copilot.vim

git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git \
  ~/.vim/pack/plugins/start/ctrlp

git clone https://github.com/preservim/nerdtree.git \
  ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
