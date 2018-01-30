
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh 
eval `dircolors ~/.dircolors/dircolors.ansi-light` 
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#

ZSH_THEME="blinks"
# ZSH_THEME="cloud"

ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#

plugins=(
	rsync
	bgnotify
	cp
	copydir
    copyfile
	docker
	docker-compose
	extract
	vundle
	autojump
	command-not-found
	vi-mode
	archlinux
	git
	jump
	tmux
	mvn
	last-working-dir
	zsh_reload
	gnu-utils
	systemd
	httpie
)

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/android-sdk/tools:/usr/share/java/gradle/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

# share history between terminals
setopt inc_append_history
setopt share_history

# Get color support for 'less'
export LESS="--RAW-CONTROL-CHARS"

# Setting 256 colors explicitly
export TERM=xterm-256color

# Use colors for less, man, etc.
[[ -f ~/.LESS_TERMCAP ]] && . ~/.LESS_TERMCAP

#bookmark aliases
alias lb="marks"
alias s="mark"
alias g="jump"
alias dm="unmark"

alias zsh-config="vim ~/.zshrc"
alias xresources-config="vim ~/.Xresources"
alias tmux-config="vim ~/.tmux.conf"
alias vim-config="vim ~/.vimrc"
alias ideavim-config="vim ~/.ideavimrc"
alias vimperator-config="vim ~/.vimperatorrc"
alias muttator-config="vim ~/.muttatorrc"
alias i3-config="vim ~/.i3/config"
alias xinit-config="vim ~/.xinitrc"
alias psql-config="vim ~/.psqlrc"

alias h="history"
alias t="tree"
alias pactree='pactree -c'
alias pacman='pacman --color always '
alias r="ranger"
alias tlc="tmux list-commands"
alias ,ru="trans -e yandex en:ru"
alias ,en="trans -e yandex ru:en"
alias oj="open-javadoc"

alias mvn='grc -c conf.mvn mvn'

alias sz='source ~/.zshrc'

alias -g BG=" >/dev/null 2>&1 &"
alias -g ERR=" 2>/dev/null "
alias -g LI=" | less -i "

alias grepc="grep --color=always"

alias lh='ls -a | grep "^\."'

alias lsdev="lsblk -o NAME,MOUNTPOINT,SIZE,FSTYPE,LABEL,UUID,PARTTYPE,PARTLABEL,OWNER,GROUP,MODE,TYPE -p "
alias lsmnt="findmnt -o TARGET,SOURCE,FSTYPE,LABEL,UUID,SIZE,AVAIL,USED,USE%,OPTIONS"

function ffo { ffj $1 | sed 's/\ /\\ /gi' | vipe; }

alias  vfatmount="sudo mount -t vfat -o rw,uid=1000,gid=100,utf8,shortname=mixed "

alias showimg="feh --force-aliasing --geometry 800x60 --zoom 200 --stretch  -f -"

function ffo { fj $1 | sed 's/\ /\\ /gi' | vipe; } 

alias mi="mvn install -Dmaven.test.skip=true"
alias mis="mvn install source:jar -Dmaven.test.skip=true"
alias mci="mvn clean install -Dmaven.test.skip=true "
alias mcis="mvn clean source:jar install -Dmaven.test.skip=true "


function lc  { logcat-color    wpa_supplicant:E StateMachine:E SignalStrength:E WifiStateMachine:E ThrottleService:E; }
function lct { logcat-color  -v threadtime  wpa_supplicant:E StateMachine:E SignalStrength:E WifiStateMachine:E ThrottleService:E; }  
function st  { pgrep -fa org.apache.catalina.startup.Bootstrap; }
function lsl { ls -la $1 --color=always | less -Fi; }
function cls { printf "\ec"; } 

function tstart { ~/tmp/apache-tomcat-8.0.30/bin/startup.sh ; }
function tstop  { ~/tmp/apache-tomcat-8.0.30/bin/shutdown.sh; }
function trestart  { echo "stop tomcat .... "; tstop;  echo "start tomcat ...."; tstart; }


function  tail-logs {
    grc -c conf.log  ssh $1 tail -F /var/log/tomcat8/catalina.out
}

function  fetch-logs {
    scp $1:/var/log/tomcat8/catalina.out /storage/catalina-$1.out && vim /storage/catalina-$1.out
}


export CATALINA_HOME=/work/server/tomcat-8.0.30
export CATALINA_BASE=/work/server/tomcat-8.0.30

export PATH="$PATH:$HOME/bin:$HOME/.bin"

# aspectj
export PATH=$PATH:$HOME/.local/share/aspectj1.8/bin 
export CLASSPATH=$CLASSPATH:$HOME/.local/share/aspectj1.8/lib/aspectjrt.jar
