if [ ! -d ~/.vim/bundle ]; then
  mkdir ~/.vim/bundle
fi

if [ ! -d ~/.vim/bundle/vundle ]; then
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

cp ./.vimrc ~/
cp ./.vim/vimrc.vundle ~/.vim/
vim +PluginInstall +qall