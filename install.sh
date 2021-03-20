#!/bin/sh

DIR=~/.vim_usr

git clone --recursive https://github.com/siubiang/vimrc.git $DIR

# install dein.vim
sh ${DIR}/dein.vim/bin/installer.sh ${HOME}/.cache/dein

# install .vimrc
# mv ${HOME}/.vimrc ${HOME}/.vimrc_old
rm -f ${HOME}/.vimrc
ln -s ${DIR}/.vimrc ${HOME}/

# install toml/*.toml
