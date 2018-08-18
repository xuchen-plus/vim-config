#!/bin/bash
BASEDIR=$(dirname "$0")
echo $BASEDIR
wget http://releases.llvm.org/6.0.0/clang+llvm-6.0.0-x86_64-apple-darwin.tar.xz
tar xf clang+llvm-6.0.0-x86_64-apple-darwin.tar.xz
sed -i "s/CLANG_PREFIX/${BASEDIR}\/clang+llvm-6.0.0-x86_64-apple-darwin/g" .vimrc
cp .vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim silent! colo xoria256 -c 'PluginInstall' -c 'qa!'
cd ~/.vim/bundle/YouCompleteMe/
./install.py --clang-completer
# if encountered _remove_dead_weakref import error, please uninstall python@2:
# brew uninstall --ignore-dependencies python@2
