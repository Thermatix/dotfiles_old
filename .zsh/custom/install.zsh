
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
	gcc@4.7
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
	mysql@5.6
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

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    # https://github.com/mxcl/homebrew/wiki/installation
		print "installing homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"
else
    brew update
fi

#install homebrew based apps
for app in $brew; do
	if brew ls --versions $app > /dev/null; then
		print "$app installed, skipping"
	else
		print "installing $app"
		brew install $app
	fi
done


# Check if Heroku toolbelt is installed
#
which -s heroku
if [[ $? != 0 ]] ; then
    # Install Heroku toolbelt
    echo "Downloading Heroku toolbelt"
    curl -O http://assets.heroku.com/heroku-toolbelt/heroku-toolbelt.pkg
    open /tmp/heroku-toolbelt.pkg
    read -p "Press return when done with Heroku installation"

    # open https://api.heroku.com/login
    # https://api.heroku.com/signup
else
    heroku update
fi

#install zplug
if [[ ! -a $HOME/.zplug/init.zsh ]]; then
    git clone https://github.com/b4b4r07/zplug $HOME/.zplug
	else
		print 'zplug installed, skipping'
fi

#install vim-plug
vim_plug_loc="$HOME/.vim/autoload/plug.vim"
if [[ ! -a $vim_plug_loc ]]; then
	echo 'installing vim-plug'
	curl -fLo $vim_plug_loc --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	mkdir "$HOME/.vim/vim_plug"
else
	print 'vim-plug installed, skipping'
fi

