# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep
unsetopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/eliott/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz promptinit
promptinit

# prompt theme
export PS1="%B%F{160}%f%F{189}%n%f %F{}:%F %F{15}%1~%f %F{9}➜%f %b"

# Aliases
alias ls='exa -a'
alias lsl='exa -lah'
alias lst='exa -T'

# Named Directories
hash -d Elixir="/home/eliott/Documents/Dev/Elixir"
hash -d Dev="/home/eliott/Documents/Dev"
hash -d Cards="/home/eliott/Documents/Dev/Elixir/Udemy/cards"

# ZPlug Config
# Source to bin file
source /usr/share/zsh/scripts/zplug/init.zsh
#enhancd
zplug "b4b4r07/enhancd", use:init.sh
source ~/.zplug/repos/b4b4r07/enhancd/init.sh
