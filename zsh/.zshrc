#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...


#################### SOURCE ALL "*.zsh" files #########################

# all of our zsh files
typeset -U config_files
config_files=($DOTDIR/**/*.zsh)


# load the env files first
for file in ${(M)config_files:#*/env.zsh}
do
  source $file
done

# load the path files
for file in ${(M)config_files:#*/path.zsh}
do
  source $file
done

# load everything but the path, env, completion files
for file in ${${${config_files:#*/path.zsh}:#*/completion.zsh}:#*env.zsh}
do
  source $file
done

# initialize autocomplete here, otherwise functions won't be loaded
autoload -U compinit
compinit

# load every completion after autocomplete loads
for file in ${(M)config_files:#*/completion.zsh}
do
  source $file
done

unset config_files

######################### END SOURCE #############################
