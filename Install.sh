#!/bin/sh

ln -s ./.vimrc ../.vimrc
ln -s ./.vim/ ../.vim

rm -rf .vim/bundle/*
git clone https://github.com/Shougo/neobundle.vim .vim/bundle/neobundle.vim/
