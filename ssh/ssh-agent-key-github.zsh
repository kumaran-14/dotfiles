if [ -z "$SSH_AUTH_SOCK" ] ; then
eval `ssh-agent -s`
ssh-add ~/.ssh/<NAME OF YOUR PRIVATE KEY>
fi
