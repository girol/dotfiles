install-omzsh:
	echo "--> Installing oh-my-zsh"
	sh -c $(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)

	echo "--> Backing up oh-my-zsh original file"
	cp -n ${HOME}/.zshrc ${HOME}/.zshrc_orig
	touch ${HOME}/.env
	stow omzsh

install-vim:

	echo "--> Installing vim"

	echo "Linking .vimrc ..."
	stow vim

	echo "Installing vim-plug ..."
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

	vim +PlugInstall +qall

install-helm:
	curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
	echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
	sudo apt-get update
	sudo apt-get install helm
