#!/bin/bash
BASEDIR=$(dirname "$0")
echo $BASEDIR
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim silent! colo xoria256 -c 'PluginInstall' -c 'qa!'
wget http://releases.llvm.org/6.0.0/clang+llvm-6.0.0-x86_64-linux-gnu-ubuntu-14.04.tar.xz
tar xf clang+llvm-6.0.0-x86_64-linux-gnu-ubuntu-14.04.tar.xz
sed -i "s/CLANG_PREFIX/${BASEDIR}\/clang+llvm-6.0.0-x86_64-linux-gnu-ubuntu-14.04/g" .vimrc
cp .vimrc ~/.vimrc
cd ~/.vim/bundle/YouCompleteMe/
mkdir build
cd build
cmake ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp -DPATH_TO_LLVM_ROOT=${BASEDIR}/clang+llvm-6.0.0-x86_64-linux-gnu-ubuntu-14.04/
cmake --build . --target ycm_core --config RelWithDebugInfo
cd ..
mkdir regex_build
cd regex_build
cmake ~/.vim/bundle/YouCompleteMe/third_party/ycmd/third_party/cregex
cmake --build . --target _regex --config Release
