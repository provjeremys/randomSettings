# Font for terminal:

https://github.com/powerline/fonts/blob/master/Inconsolata/Inconsolata%20for%20Powerline.otf

# Add to .zshrc

`plugins=(git extract node npm z)`

# Theme for zshell:

https://github.com/wesbos/Cobalt2-iterm/blob/master/cobalt2.zsh-theme

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
