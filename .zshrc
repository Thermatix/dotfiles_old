base_path="$HOME/.zsh"
config_path="$base_path/config"
lib_path="$base_path/lib"
custom_path="$base_path/custom"

if [[ ! -d $HOME/.zplug ]];then
    git clone https://github.com/b4b4r07/zplug $HOME/.zplug
fi

source "$HOME/.zplug/init.zsh"
source "$custom_path/functions.sh"
source "$config_path/plugins.zsh"
source "$config_path/zsh.zsh"
source "$custom_path/aliases.sh"
source "$base_path/setup.zsh"

