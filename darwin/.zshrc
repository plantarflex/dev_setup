export BASH_SILENCE_DEPRECATION_WARNING=1
export LANG="en_US.UTF-8"
export PATH=/usr/local/bin::$PWD:$PATH

# colors
autoload -U colors && colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ll='ls -alGFH'
alias la='ls -A'
alias l='ls -CF'
export PS1="%B%F{green}%n@%m%f%b:%B%F{blue}%~%{$reset_color%}%B%F{red}\${vcs_info_msg_0_} %F{111}%K{000}[%D{%F} %@] %F{$reset_color%}%{$reset_color%}
$ "

# autocompletion including docker
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i


# github
alias gitt='echo "<INSERT GITHUB TOKEN>" | pbcopy'
alias gc='gitmoji -c'

# git
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats ' (%b)'
setopt PROMPT_SUBST

