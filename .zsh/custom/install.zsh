
brew=(
apple-gcc42
awk
bash
bitlbee
colortail
couchdb
ctags
czmq
dnstracer
erlang
fontforge
fzf
gcc
git
gbataille/gba/githud
grep
heroku
imagemagick
jenv
simeji/jid/jid
kotlin
libsodium
libxslt
make
moc
mongodb
multitail
mysql
neovim
perl
phantomjs
postgresql
pv
rbenv
ruby-build
reattach-to-user-namespace
sdl2
snappy
spark
tclap
the_silver_searcher
tmux
utf8proc
vim
weechat
wget
zsh
zsh-completions
zsh-syntax-highlighting
)

#install homebrew
if brew -v; then
else
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#install homebrew based apps
for app in $brew; do
	if brew ls --versions myformula > /dev/null; then

	else
		brew install app
	fi
done

#install zplug
if [[ ! -d $HOME/.zplug ]];then
    git clone https://github.com/b4b4r07/zplug $HOME/.zplug
fi


