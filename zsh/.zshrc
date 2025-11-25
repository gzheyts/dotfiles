# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh 
eval `dircolors ~/.dircolors/dircolors.mine` 

# ZSH_THEME="af-magic"
# ZSH_THEME="wezm"
ZSH_THEME="nicoulaj"

ENABLE_CORRECTION="true"

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


# Using different arguments after HISTTIMEFORMAT allows you to customize the level of detail in the timestamp:
#  
#   %d: Day
#   %m: Month
#   %y: Year
#   %H: Hour
#   %M: Minutes
#   %S: Seconds
#   %F: Full date (Y-M-D format)
#   %T: Time (H:M:S format)
#   %c: Complete date and timestamp (Day-D-M-Y H:M:S format)
#
export HISTTIMEFORMAT="%c "

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#

plugins=(
	command-not-found
        zsh-autosuggestions
	cp
	docker
	docker-compose
	extract
	git
	httpie
	jump
	last-working-dir
	mvn
	rsync
	systemd
	tmux
	vi-mode
	vundle
        colored-man-pages
        compleat
        fzf
        gitignore
        grc
        helm
        history
        httpie
        kubectl
        minikube
        sdk
        snap
        spring
        svn
        svn-fast-info
        taskwarrior
        timer
        tmuxinator
        ubuntu
        vault
        web-search
        zoxide
)

# User configuration

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# ZSHZ setings
export ZSHZ_CASE=smart

# history setings
HISTSIZE=1000000       # Set the amount of lines you want saved
SAVEHIST=1000000       # This is required to actually save them, needs to match with HISTSIZE

setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don\'t record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don\'t record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don\'t write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.

setopt no_nomatch

# Get color support for 'less'
export LESS="--RAW-CONTROL-CHARS"

# Setting 256 colors explicitly
export TERM=xterm-256color

# Use colors for less, man, etc.
[[ -f ~/.LESS_TERMCAP ]] && . ~/.LESS_TERMCAP

# Local aliases
[[ -f ~/.aliases.local ]] && . ~/.aliases.local

#bookmark aliases 
alias lm="marks"
alias sm="mark"
alias g="jump"
alias dm="unmark"

#ls 
alias ls="ls --color"

# config
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



alias vimf='vim $(fzf)'

alias :h="man"
alias :t="tree"

alias t="trans :ru  "
alias T="trans :en  "


alias pactree='pactree -c'
alias pacman='pacman --color always '
alias r="ranger"
alias tlc="tmux list-commands"
alias ,ru="trans -e yandex en:ru"
alias ,en="trans -e yandex ru:en"

alias sz='source ~/.zshrc'

alias -g BG=" >/dev/null 2>&1 &"
alias -g ERR=" 2>/dev/null "
alias -g LI=" | less -i "


alias grepc="grep --color=always"

alias lh='ls -a | grep "^\."'
alias ld='l -d */'
alias lf='l -p | grep -v /'

alias ff='find -type f -name '
alias fd='find -type d -name '

alias gRem="gss | awk '{print \$2}' | xargs rm -rf"

alias idiff="idea diff"
alias imerge="idea merge"

alias lsdev="lsblk -o NAME,MOUNTPOINT,SIZE,FSTYPE,LABEL,UUID,PARTTYPE,PARTLABEL,OWNER,GROUP,MODE,TYPE -p "
alias lsmnt="findmnt -o TARGET,SOURCE,FSTYPE,LABEL,UUID,SIZE,AVAIL,USED,USE%,OPTIONS"
alias  vfatmount="sudo mount -t vfat -o rw,uid=1000,gid=100,utf8,shortname=mixed "

alias showimg="feh --force-aliasing --geometry 800x60 --zoom 200 --stretch  -f -"

alias -g C=" | xsel -b " 
alias -g ML=" --settings ~/.m2/settings-local.xml "

# Maven
alias mvn="mvnd"
export MAVEN_OPTS="-Daether.dependencyCollector.impl=bf -Dmaven.artifact.threads=10"
export MAVEN_ARGS="-T 1C -V -e"
alias mct="mvn -T 1C clean test"
alias mi="mvn install"
alias mist="mvn install -DskipTests=true"
alias mcist="mvn clean install -DskipTests=true"
alias mits="mvn install -Dmaven.test.skip=true"
alias mp="mvn package"
alias mpts="mvn package -Dmaven.test.skip=true"
alias mpst="mvn package -DskipTests=true"
alias mver="mvn verify"
alias mcp="mvn clean package"
alias mis="mvn install source:jar -Dmaven.test.skip=true"
alias mci="mvn clean install"
alias mddu='mvn versions:display-dependency-updates'
alias mdt='mvn dependency:tree'
alias mdtf='mvn dependency:tree -Dfull'
alias mvngen="mvn archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.3"

function cls { printf "\ec"; } 

export PATH="$PATH:$HOME/bin:$HOME/.bin:$HOME/.local/bin"

# zsh autosuggestions
bindkey '^ ' autosuggest-accept

# sqlcl
export SQLPATH=~/.sqlcl


autoload -U +X bashcompinit && bashcompinit

complete -o nospace -C /snap/vault/2399/bin/vault vault
source ~/.zsh-plugins/kafka.plugin.zsh

# sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
