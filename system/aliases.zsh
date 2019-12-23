############################ SYSTEM WIDE ALIASES ##############################

# parse error on reload in zsh/plugin/k/init.zsh
alias reload='unalias k && . ~/.zshrc'

# Good 'ol Clear Screen command
alias cls='clear' 

# Cat to Bat
alias cat='bat'

# Preview files



alias v="fzf --preview-window=wrap --preview 'bat --style=numbers --theme='OneHalfDark' --color=always {}' --height=75%"

# Typos
alias ehco='echo'
alias relaod='reload'
alias pyhton='python'
