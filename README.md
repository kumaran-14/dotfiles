# Kumaran's DOTFILES and Terminal Setup

<p align="center">
<a href="https://asciinema.org/a/niycA8U7FqciflhJSjx3B7xIJ" target="_blank"><img src="https://asciinema.org/a/niycA8U7FqciflhJSjx3B7xIJ.svg" /></a>
</p>

> OS=Linux SHELL=zsh TERM=xterm-256color

### ZSH using Prezto configuration 

#### Breakdown of zsh dotfiles
There are five basic starup files which get sourced whenever a new shell is instantiated (excluding prezto config). These are all located in ```$HOME```, i.e ```~/```.
 * ```.zshenv``` - This file gets sourced in ___all___ shells. Environment variables which are ___updated frequently___ should be set here. (```$PATH```, ```$EDITOR```, ```$PAGER```)
 * ```.zprofile``` - Similar to ```.zlogin``` and run in login ```shells```. __NOT__ meant to be used together with ```.zlogin```
 * ```.zshrc``` - This file gets sourced in ___all interactive___ shells (```[[ -o interactive ]]``` is _true_). It should contain commands for interactive usage. Aliases, functions, options, key bindings, command completion, prompt, coloring are defined and configured here.
    ##### Prezto dotfiles
     * ```.zpreztorc``` - Gets sourced after ```.zshrc```. This file configures Prezto. ```.zshrc``` sources ```.zprezto/init.zsh```. ```.zprezto/init.zsh``` sources ```.zpreztorc```.     
* ```.zlogin``` - This file gets sourced in ___all login___ shells (```[[ -o login ]]``` is _true_). It should ___not___ modify the shell environment at all. Rather, it should be used to run external commands (fortune, msgs, etc).
 * ```.zlogout``` - Gets sourced when ___login___ shells exit. Used to clear and reset the terminal.
    ##### Prezto's execution order

    According to zsh documentation,
    > You may wonder why there are both ```.zprofile``` and ```.zlogin```, when they are both for ___login___ shells: the answer is the obvious one, that one is run before, one after ```.zshrc```. This is historical; Bourne-type shells run ```/etc/profile```, and csh-type shells run ```~/.login```, and zsh tries to cover the bases with its own startup files.
    >
    1. ```~/.zshenv```
    2. ```~/.zprofile``` - Prezto source this file for ___non-login___ and ___level 1___ shells. (```[[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) ]]```)
    3. ```~/.zshrc```
    4. ```~/.zpreztorc```
    5. ```~/.zlogin``` - Only for login shells
    6. ```~/.zlogout``` - Only for login shells

#### How I manage my dotfiles?
Simple, using git. I have git repository, ```~/.dotfiles```.
All necessary files should be symlinked to ```$HOME```
In the near future, the files will be renamed to ```filename.symlink```, and a new ```init.sh``` script will be created which will recursively symlink the files.

#### My filesystem
I tweaked [XDG](https://wiki.archlinux.org/index.php/XDG_Base_Directory) base directory specification to suit my needs.
* ```$HOME/.config``` is now ```$HOME/.dotfiles```
* ```$HOME/.local/bin``` is now ```$HOME/.dotfiles/local/bin```
* ```$HOME/.local/share``` is now ```$HOME/.dotfiles/local/share```

Why? Because symlinking is a tedious process and it's way more easier to add ```$HOME/.dotfiles/local/bin``` to ```$PATH```

##### Monitor
To view external screen only
1. generate config file using command
2. place it in  /etc/X11/xorg.conf
To view laptop screen only
1. backup and then delete  /etc/X11/xorg.conf
##### Filesystem Partition

1. /home is in different partition
2. / is in different partition

use these commands to free up space in root partition

```pacman -Qdtq | pacman -Rns -```

See this https://wiki.archlinux.org/title/Pacman/Tips_and_tricks#Removing_unused_packages_(orphans) and this https://wiki.archlinux.org/title/Pacman#Cleaning_the_package_cache


sometimes / in filelight shows different from what df -h or dolphin shows for the /dev/nvme1n1p3 disk partition, however, it can be due to deleted file having open file descriptors which says disk is used. Often, it is due to docker process. run ```docker system prune -a``` to free up space. Note: Filelight always shows correct usage. Go by that.

#### Prompt

Spaceship prompt, using nodejs package.
Have a look at `zsh/prompt.zsh` for prompt configuration

#### Packages installed through AUR (pacman and yay)
> [386 packages](./assets/pacman-packages-list.txt)

#### Packages installed through PIP
> [81 packages](./assets/pip-packages-list.txt)


#### Vim

Vim like bindings in chrome using vim extension, ideavim in Idea products (Clion) and vscodevim in vscode

~/.vimrc is symlinked, and vim plugins are installed through vim-plug in ~/.vim/plugged

#### Vscode
use intellij shortcuts via extension



#### Display
Know that in your and most laptop with integrated graphics (Intel) and dedicated graphics card, the HDMI is directly connected to the graphics card. So you need the graphics card to be active if you want to connect to a external monitor

#### Nvidia
Easier to use mhwd to manage drivers than following arch wiki.
Had trouble with open source drivers to connect to external display, installed official proprietary drivers.

backup files for x11 config is in /etc/X11/xorg.conf.backup
actual config is in /etc/X11/xorg.conf.backup

note: i have manually backed up files in ~/.dotfiles/x11/


#### Readline vi mode
Enabled by adding `set -o vi` in .zprofile
use ESC to trigger command mode to edit commands inline
use Ctrl-x followed by ctrl-e to open command in $VISUAL editor and edit and execute
checkout https://stackoverflow.com/questions/22655587/how-to-use-vi-to-edit-a-command-in-terminal-on-linux




#### Grub Screen

<p align="center">
	<img src="./assets/grub-screenshot.png"/>
</p>





### Inspiration
[Holman's dotfiles.](https://github.com/holman/dotfiles)
