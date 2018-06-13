set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Bundle 'jistr/vim-nerdtree-tabs'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_auto_start_csharp_server = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0
Bundle 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'tpope/vim-unimpaired'
let g:buffergator_sort_regime = 'basename'
let g:airline#extensions#tabline#enabled = 1
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 1
let g:buffergator_sort_regime = "basename"
Bundle 'mileszs/ack.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sjl/gundo.vim'
Plugin 'jiangmiao/auto-pairs'
" Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/xoria256.vim'
" Plugin 'octol/vim-cpp-enhanced-highlight'
" All of your Plugins must be added before the following line
call vundle#end()            " required
set wildignore+=*/tmp/*,*/build/*,*thirdparty*,*package*,*.os,*.o,*.a,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](.git|.hg|.svn|build|package|thirdparty|third_party|3rd_party)$',
  \ 'file': '\v\.(exe|so|dll|os|o|a)$',
  \ 'link': 'alicpp',
  \ }
filetype plugin indent on    " required
set nu!
set hlsearch
set expandtab
set tabstop=4
set cindent shiftwidth=4
set autoindent shiftwidth=4
set cmdheight=1
set scrolloff=5
set incsearch
set nobackup
set nowritebackup
set ignorecase smartcase
set laststatus=2
set t_Co=256
set diffopt+=vertical
let g:solarized_termcolors=256
colo xoria256
set background=dark
syntax on
set backspace=indent,eol,start
let NERDTreeDirArrows = 0
let g:nerdtree_tabs_open_on_gui_startup = 0
let NERDTreeShowLineNumbers = 1
let NERDTreeIgnore = ['\.pyc$', '\.swp$', '\.o$', '\.os$']
map <C-n> :NERDTreeTabsToggle<cr>
map <leader>s :NERDTreeFind<cr>
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nnoremap <Leader>w :w<CR>
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
set cursorline
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l
inoremap <C-e> <C-o>A
inoremap <C-b> <C-o>I
if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif
au BufNewFile,BufRead SConstruct,SConscript set filetype=python
let g:mwDefaultHighlightingPalette = 'maximum'
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Close_On_Select=0
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window   = 1
set hidden
set wildchar=<Tab> wildmenu wildmode=full
set wildcharm=<C-Z>
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
nnoremap <F10> :b
nmap <left> :bp!<CR>
nmap <right> :bn!<CR>
nmap <up> :bf!<CR>
nmap <down> :bl!<CR>
