#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias v='nvim'
alias wipe='cd && clear && source ~/.bashrc' 
alias minecraft-launcher='export ALSOFT_DRIVERS=pulse && minecraft-launcher'
alias logout='qdbus6 org.kde.Shutdown /Shutdown org.kde.Shutdown.logout'
alias du-all='find . -mindepth 1 -maxdepth 1 -exec du -hs {} + | sort -h'

# WTF is this
PS1='[\u@\h \W]\$ '


export PATH="$HOME/.local/bin:$HOME/.aftman/bin:~/.cargo/bin:$PATH"
export KWIN_DRM_ALLOW_NVIDIA_COLORSPACE
export EDITOR=nvim
export VISUAL=nvim
export TMUX_CONF="~/.config/tmux.conf"
fastfetch  --bright-color --color-title "#e48586" --color-keys "#e48586"
echo ''

#cat ~/todo.txt
. "$HOME/.aftman/env"
