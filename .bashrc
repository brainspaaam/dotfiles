#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ~~~~~~~~~~~~~ Tmux ~~~~~~~~~~~~~ #
# Either start a new sessios or attach to a previous one if it exists
[ -z "$TMUX" ] && { tmux attach || exec tmux new-session; }
# alias
alias t='tmux'

# ~~~~~~~~~~~~~ Environment Variables ~~~~~~~~~~~~~ #

export VISUAL=nvim
export EDITOR=nvim
export STARSHIP_CONFIG=/home/$USER/.config/starship.toml

# ~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~ #

# quality of life
alias off='poweroff'
alias boot='reboot'
alias e='exit'
alias c='clear'
alias v='nvim'

# ls
alias l='ls --color=auto'
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias tree='tree -C'

# dev
alias k='kubectl'
alias bmw='bmwaws login'

# ~~~~~~~~~~~~~ Prompt ~~~~~~~~~~~~~ #

eval "$(starship init bash)"

# ~~~~~~~~~~~~~ SSH ~~~~~~~~~~~~~ #

eval "$(ssh-agent -s)" >/dev/null
ssh-add -q ~/.ssh/brainspamgithub

