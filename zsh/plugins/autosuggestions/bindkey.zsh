########## BIND KEY FOR autosuggestions PREZTO module

# Konsole needs to differentiate between 'Enter', 'Shift+Enter' and 'Ctrl+Enter'.
# Answer by 'rudib' (2nd one) works. Follow instructions.
# https://unix.stackexchange.com/questions/536352/ctrl-enter-shift-enter-and-enter-are-interpreted-as-the-same-key

# Ctrl + Enter
bindkey '\e[20;5~' autosuggest-execute

# Shift + Enter
bindkey '^[OM' autosuggest-accept

# 'sudo showkey --help' for more info
