
export CUST_FUNCTIONS="$HOME/.zsh/custom/functions.sh"
export SSH_KEY_PATH="~/.ssh/dsa_id"
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"
export PATH="$HOME/.cask/bin:/Library/PostgreSQL/9.5/bin/:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.multirust/toolchains/stable/cargo/bin:$HOME/.zsh/bin"


export PATH="$HOME/.cargo/bin:$PATH"
