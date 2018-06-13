#!/bin/bash
cp .vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim silent! colo xoria256 +PlugInstall +qall
wget http://releases.llvm.org/6.0.0/clang+llvm-6.0.0-x86_64-linux-gnu-ubuntu-14.04.tar.xz
tar xf clang+llvm-6.0.0-x86_64-linux-gnu-ubuntu-14.04.tar.xz
cwd=`pwd`
cd ~/.vim/bundle/YouCompleteMe/
mkdir build
cd build
cmake ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp -DPATH_TO_LLVM_ROOT=${cwd}/clang+llvm-6.0.0-x86_64-linux-gnu-ubuntu-14.04/
cmake --build . --target ycm_core --config RelWithDebugInfo
mkdir -p ~/.vim/plugin
cp mark.vim ~/.vim/plugin
