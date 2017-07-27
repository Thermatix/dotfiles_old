# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(osx git gitfast git-extras ruby gem atom brew compleat last-working-dir nyan web-search)

# User configuration

export PATH="$HOME/.cask/bin:/Library/PostgreSQL/9.5/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/usr/local/sbin:/sbin:$HOME/.multirust/toolchains/stable/cargo/bin:$HOME/.zsh/bin"
# export MANPATH="/usr/local/man:$MANPATH"



source $ZSH/oh-my-zsh.sh

export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.#

# LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
#   if [ -f $LUNCHY_DIR/lunchy-completion.zsh ]; then
#     . $LUNCHY_DIR/lunchy-completion.zsh
#   fi
export CUST_FUNCTIONS="$HOME/.zsh/custom/functions.sh"

source $CUST_FUNCTIONS
source ~/.zsh/custom/aliases.sh
source $HOME/.cargo/env
[[ -s $HOME/.rsvm/rsvm.sh ]] && . $HOME/.rsvm/rsvm.sh # This loads RSVM

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

airport_path="/usr/local/bin/airport"
if [ ! -L $airport_path ]; then
	`ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport $airport_path`
fi

# tail -f $1 | grep $2 -A 2
# function tinput() {
# 	echo tail -f $1 | grep $2 -A ${3:-2}
# }



#TMOUT=1
#RPROMPT='%{%F{blue}%}[%D{%H:%M:%S}]%{%f%}'
#TRAPALRM() {
#    zle reset-prompt
#}

build_prompt() {
  RETVAL=$?
  prompt_status
  prompt_virtualenv
  prompt_context
  prompt_dir
  prompt_end
  # git-radar --zsh --fetch
	gitHud zsh
}



autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  fi
}
add-zsh-hook chpwd load-nvmrc

export RUST_SRC_PATH=~/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src
export OPENSSL_INCLUDE_DIR="$(brew --prefix openssl)/include"
export OPENSSL_LIB_DIR="$(brew --prefix openssl)/lib"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

source /usr/local/Cellar/zsh-syntax-highlighting/0.4.1/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
