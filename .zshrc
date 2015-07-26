
export TERM='xterm-256color'
#function _update_ps1()
#{
#  export PROMPT="$(~/.powerline-zsh.py --cwd-only $?)"
#}
#precmd()
#{
#  _update_ps1
#}

. /usr/share/zsh/site-contrib/powerline.zsh

# ZSH completion
autoload -U compinit
compinit

# Correction
setopt correctall

# ZSH history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=2000
HISTSAVE=2000
SAVEHIST=HISTSIZE

setopt BANG_HIST
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

# OS X like open command using xdg-open
alias open="xdg-open >/dev/null 2>&1"
alias sl="ls"
alias ls="ls --color=auto --group-directories-first"
alias ivm="vim"
alias v="vim"
alias subl="subl >/dev/null 2>&1"

# Use vi mode in ZLE
bindkey -v
export KEYTIMEOUT=1
bindkey '^w' backward-kill-word
bindkey '^p' up-history
bindkey '^n' down-history

# Speed up key sequences
KEYTIMEOUT=1
