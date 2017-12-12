# OSX? Install iterm2

https://www.iterm2.com/

# Install zshell

https://github.com/robbyrussell/oh-my-zsh

# Add to .zshrc

```
plugins=(git extract node npm z)
```

# Add to .gitconfig
> This enables `npm cleanhouse` to delete branches no longer tied to origin branches for a given project
```
[alias]
	cleanhouse = ! echo "Deleting old branches" && git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -d
 ```

# Theme for zshell:

https://github.com/wesbos/Cobalt2-iterm

## Font for terminal:

Icons need the *Inconsolata* fonts

https://github.com/powerline/fonts/blob/master/Inconsolata/Inconsolata%20for%20Powerline.otf

## Changes:

```
diff cobalt2.zsh-theme ~/.oh-my-zsh/themes/cobalt2.zsh-theme
52c52
<     prompt_segment black default "%(!.%{%F{yellow}%}.)✝"
---
>     prompt_segment black default "%(!.%{%F{yellow}%}.)Ⓐ "
74c74
<   prompt_segment blue black '%3~'
---
>   prompt_segment blue white '%3~'
```

# Setup keyboard replacements
```
kirbydance -> <(^.^<)  (>^.^)>  <(^.^)>
shruggy -> ¯\_(ツ)_/¯
fliptable -> (╯°□°）╯︵ ┻━┻
fixtable -> ┬─┬ノ( º _ ºノ)
```
