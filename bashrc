#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\033[01;35m\]\u\[\033[01;30m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

export LANG=en_US.UTF-8
export LC_MESSAGES="en_US.UTF-8"

# Custom scripts
if [ -f $HOME/.bashrc_custom ]; then
  source $HOME/.bashrc_custom
fi

if [ -f $HOME/.bash_aliases ]; then
  source $HOME/.bash_aliases
fi
export MSBuildSDKsPath="/usr/share/dotnet/sdk/$(dotnet --version)/Sdks/"
