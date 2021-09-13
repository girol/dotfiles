oh-my-zsh:
	echo "--> Installing oh-my-zsh"
	sh -c $(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)

	echo "--> Backing up oh-my-zsh original file"
	cp -n ${HOME}/.zshrc ${HOME}/.zshrc_orig
	touch ${HOME}/.env
	stow omzsh
