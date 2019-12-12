############################ SYSTEM WIDE ALIASES ##############################

alias reload='. ~/.zshrc'

# Good 'ol Clear Screen command
alias cls='clear' 

# Cat to Bat
alias cat='bat'

# Preview files
alias v="fzf --preview-window=wrap --preview 'bat --style=numbers --theme='OneHalfDark' --color=always {}' --height=70%"
