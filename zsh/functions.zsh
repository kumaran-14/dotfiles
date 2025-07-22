################### ZSH FUNCTIONS ###################

# for "cd ..../dir"
rationalise-dot() {
  if [[ $LBUFFER = *.. ]]; then
    LBUFFER+=/..
  else
    LBUFFER+=.
  fi
}

zle -N rationalise-dot
bindkey . rationalise-dot
#I have the following in my .zshrc that I'm sure I copied from somewhere. It allows the use of Ctrl-z to also resume programs runnings in the background instead of manually typing fg.
  # Allow Ctrl-z to toggle between suspend and resume
  function Resume {
      fg
      zle push-input
      BUFFER=""
      zle accept-line
  }
  zle -N Resume
  bindkey "^Z" Resume
