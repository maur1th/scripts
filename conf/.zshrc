# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tm/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Custom command prompt
export PS1="[%n@%m %1~]%# "
