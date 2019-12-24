#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;35m\]\u\[\033[01;30m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

export LANG=en_US.UTF-8
export LC_MESSAGES="C"

# Custom scripts
if [ -f $HOME/.bashrc_custom ]; then
  source $HOME/.bashrc_custom
fi
