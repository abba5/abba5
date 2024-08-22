# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="my-magic" # set by `omz`

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

# ADDING PATH

export PATH="$PATH:/Users/abbas/scapia/flutter/flutter/bin"

export EDITOR='nvim'

# Android
export PATH=$PATH:"/Users/abbas/Library/Android/sdk/platform-tools"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# GOLANG
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin

export GOPATH=$HOME/golib
export PATH=$PATH:$GOPATH/bin

export GOPROXY=https://proxy.golang.org,direct

# aws
export AWS_SDK_LOAD_CONFIG=true


# shell function

typempin() {
    adb shell input keyevent 8
    adb shell input keyevent 9
    adb shell input keyevent 10
    adb shell input keyevent 11
}

jr() {
    jq '.' | nvim
}


c() { clear }

sw() {
    cd ~/scapia
    cd $(ls | fzf)
}

fh() {
    history | awk '{$1=""; print $0}' | sed 's/^\s//' | grep -v 'curl' | sort | uniq | fzf
}

set_aws_env() {
    profile=$1
    eval "$(aws configure export-credentials --profile $profile --format env)"
}

nvimf() {
    fzf | nvim
}

utc2ist() {
    datetime=$1$2
    date -jf '%Y-%m-%d %H:%M:%S %z' ${datetime}' +0000' +'%Y-%m-%d %H:%M:%S'
}

utc2timestamp() {
    datetime=$1$2
    date -jf '%Y-%m-%d %H:%M:%S %z' ${datetime}' +0000' +'%s'
}

current_timestamp() {
    bc <<< "$(date +'%s') * 1000"
}

timestamp() {
    datetime=$1$2
    bc <<< "$(date -jf '%Y-%m-%d %H:%M:%S' ${datetime} +'%s') * 1000"
}

timestamp2datetime() {
    timestamp=$1
    date -r ${timestamp} +'%Y-%m-%d %H:%M:%S'
}


# awslogs
export PATH=$PATH:/Users/abbas/scapia/CLI/bin

# dart
export PATH="$PATH":"$HOME/.pub-cache/bin"

# idea
export PATH=$PATH:/Applications/IntelliJ\ IDEA\ CE.app/Contents/MacOS

# CLANG
alias gcc=gcc-13
alias g++=g++-13

# VLC
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'

