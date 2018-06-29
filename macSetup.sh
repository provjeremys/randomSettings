#!/bin/bash
./vimSetup.sh
xcode-select --install
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew install python
brew install git
brew install nvm
brew install iterm2
brew install the_silver_searcher
brew install zs

git config --global user.name="Jeremy Scherer"
git config --global user.email flare576@gmail.com

pip install --user powerline-status
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cd ~/.oh-my-zsh/themes
curl -LSso cobalt2.zsh-theme https://raw.githubusercontent.com/wesbos/Cobalt2-iterm/master/cobalt2.zsh-theme
sed -i 's/✝/Ⓐ' cobalt2.zsh-theme
sed -i 's/prompt_segment blue black/prompt_segment blue white/' cobalt2.zsh-theme
cd /tmp
git clone https://github.com/powerline/fonts
cd fonts
./install.sh

cat <<EOM >>~/.zshrc
plugins=(git extract node npm z)
alias chrome='open -a Google\ Chrome'
function gac() {
  git add .
  git commit -m "$1"
  git push
}

alias kc='kubectl'
alias kcp='kubectl get pods -o wide --all-namespaces $1' 
EOM

cat <<EOM >>~/.gitconfig
[alias]
	cleanhouse = ! echo "Deleting old branches" && git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -D
EOM

chsh -s $(which zsh)
