
#Switch Caps lock to Contorl_L for productivity.
#To undo changes : $ setxkbmap -option 

#https://stackoverflow.com/questions/30107038/how-to-remap-caps-lock-to-control-then-disable-the-left-control-on-linux
setxkbmap -option ctrl:swapcaps
xmodmap -e "keysym Caps_Lock = NoSymbol"
