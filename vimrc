set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'dracula/vim'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'tomlion/vim-solidity'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'chriskempson/base16-vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'majutsushi/tagbar'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


:set nu
:set ai
:set cursorline
:set tabstop=4
:set expandtab
:set shiftwidth=4
:set mouse=a
:set incsearch
:inoremap ( ()<Esc>i
:inoremap " ""<Esc>i
:inoremap ' ''<Esc>i
:inoremap [ []<Esc>i
:inoremap {<CR> {<CR>}<Esc>ko
:inoremap {{ {}<ESC>i
:nmap <F12> :tabc<CR>
:nmap <F5> :NERDTreeToggle<CR>
:nmap <F4> :tabe<CR> 
:nmap <F3> :tabn<CR>
"":nmap <F2> :tabN<CR>
"映射上下左右的光标移动
nnoremap  a   i
nnoremap  i   k
nnoremap  k  j
nnoremap  j   h
"行光标移动
nmap lh  ^
nmap le  $

filetype indent on

" colorscheme
set t_Co=256
set background=dark
:colorscheme molokai

" ctrl-p
let g:ctrlp_map = '<c-p>' 
let g:ctrlp_cmd = 'CtrlP'
" 设置过滤不进行查找的后缀名 
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc)$'


"YCM"
" 设置跳转到方法/函数定义的快捷键
nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 触发补全快捷键
let g:ycm_key_list_select_completion = ['<TAB>', '<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<c-p>', '<Up>']
let g:ycm_auto_trigger = 1
" 最小自动触发补全的字符大小设置为 3
let g:ycm_min_num_of_chars_for_completion = 3
" YCM的previw窗口比较恼人，还是关闭比较好
set completeopt-=preview
"" 配置 tagbar 插件
let g:tagbar_ctags_bin='ctags'     "ctags 程序的路径
let g:tagbar_width=30                   "窗口宽度设置为 30
""let g:tagbar_left=1                         "设置在 vim 左边显示
let g:tagbar_map_openfold = "zv"   "按 zv 组合键打开标签，默认 zc 关闭标签

"我设置 F2 为打开或者关闭的快捷键，根据你的习惯更改
:nmap <F2> :TagbarToggle<CR>

