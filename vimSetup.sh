#!/bin/bash
cp .vimrc ~/
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/sjl/badwolf.git
git clone https://github.com/elzr/vim-json.git
