#!/bin/bash

cp ../dot-vim ~/.vim -rv

cd ~/.vim -v

ln -s .vimrc ~/ -v

git submodule init
git submodule update
