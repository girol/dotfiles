#/bin/bash

echo "Installing .vimrc..."
cp $BASE_PATH/vimrc ~/.vimrc

echo
echo "vimrc installed into $HOME/.vimrc"
echo

echo "Preparing vim-plug..."

echo "Downloading and installing..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Plugging..."
echo

vim +PlugInstall +qall