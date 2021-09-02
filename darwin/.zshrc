export BASH_SILENCE_DEPRECATION_WARNING=1
export LANG="en_US.UTF-8"
export PATH=/usr/local/bin::$PWD:$PATH

autoload -U colors && colors

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ll='ls -alGFH'
alias la='ls -A'
alias l='ls -CF'

alias gc='gitmoji -c'
alias gitt='echo "<INSERT GITHUB TOKEN>" | pbcopy'
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="%B%F{green}%n@%m%f%b:%B%F{blue}%~ %F{red}(parse_git_branch)%F{reset_color}
$ "

# docker autocompletion
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i
