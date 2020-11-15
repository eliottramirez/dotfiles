# zsh-newuser-install
  HISTFILE=~/.zsh/.histfile
  HISTSIZE=1000
  SAVEHIST=2000
  setopt beep
  bindkey -v
#

# compinstall
  zstyle :compinstall filename '/home/eliott/.zshrc'
  autoload -Uz compinit
  compinit
# 

# prompt
  PROMPT="%n@zonafranca: %~ > "
#

# aliases
  alias ll='ls -lhaF'
  alias cp='cp -rpv'
  alias wo='sudo -E wo'
#

# Run on boot
#  sudo /etc/init.d/nginx start
#  sudo /etc/init.d/php7.4-fpm start
#  sudo /etc/init.d/mysql start
#

# shorcuts
#  hash -d dir='path/to/dir'
#
