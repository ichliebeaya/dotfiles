set nocompatible
if has('vim_starting')
   " 初回起動時のみruntimepathにneobundleのパスを指定する
      set runtimepath+=~/.vim/bundle/neobundle.vim/
      endif
      " NeoBundleを初期化
      call neobundle#begin(expand('~/.vim/bundle/'))
      NeoBundle 'Shougo/unite.vim'
      NeoBundle 'Shougo/vimfiler'
      NeoBundle 'davidhalter/jedi-vim'
      call neobundle#end()
      NeoBundleCheck
filetype plugin indent on
set autoindent
set expandtab
syntax on
colorscheme molokai
set number
set ruler
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<
set incsearch
set hlsearch
set nowrap
set showmatch
set whichwrap=h,l
set nowrapscan
set ignorecase
set smartcase
set hidden
set history=2000
set tabstop=2
set shiftwidth=2
