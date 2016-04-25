#!/bin/bash

cp ../dot-vim ~/.vim -rv

cd ~/.vim -v

ln -s ~/.vim/.vimrc ~/.vimrc -v

git submodule init
git submodule update

cd ~/.vim/bundle/youcompleteme
git submodule update --init --recursive
./install.py --clang-completer --omnisharp-completer
