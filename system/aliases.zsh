############################ SYSTEM WIDE ALIASES ##############################

#### parse error on reload in zsh/plugin/k/init.zsh
alias reload='unalias k && . ~/.zshrc && echo "ZSH Config Reloaded!"'

#### Good 'ol Clear Screen command
alias cls='clear' 

#### Cat to Bat
alias cat='bat'

#### Preview files
alias v="fzf --preview-window=wrap --preview 'bat --style=numbers --theme='OneHalfDark' --color=always {}' --height=75%"

#### Resume wget by default
alias wget='wget -c'

#### Start precision calculator with math support
alias math='bc -l'
alias calc='bc -l'

#### Typos
alias ehco='echo'
alias relaod='reload'
alias pyhton='python'
alias got='git'
alias gut='git'

#### Navigate to dotfiles repo
alias dot='cd $DOTDIR'
