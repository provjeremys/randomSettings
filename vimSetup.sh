#!/bin/bash
cp .vimrc ~/
mkdir -p ~/.vim/colors
cd ~/.vim/colors
curl -O https://raw.githubusercontent.com/sjl/badwolf/master/colors/badwolf.vim
mkdir -p ~/.vim/indent
cd ~/.vim/indent
curl -O https://raw.githubusercontent.com/elzr/vim-json/master/indent/json.vim
mkdir ~/.vim/config
cd ~/.vim/syntax
curl -O https://raw.githubusercontent.com/elzr/vim-json/master/syntax/json.vim
mkdir ~/.vim/ftplugin
cd ~/.vim/ftplugin
curl -O https://raw.githubusercontent.com/elzr/vim-json/master/ftplugin/json.vim
mkdir ~/.vim/ftdetect
cd ~/.vim/ftdetect
curl -O https://raw.githubusercontent.com/elzr/vim-json/master/ftdetect/json.vim
