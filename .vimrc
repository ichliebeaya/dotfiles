set nocompatible
if has('vim_starting')
   " 初回起動時のみruntimepathにneobundleのパスを指定する
      set runtimepath+=~/.vim/bundle/neobundle.vim/
      endif
      " NeoBundleを初期化
      call neobundle#begin(expand('~/.vim/bundle/'))
      NeoBundle 'Shougo/unite.vim'
      NeoBundle 'Shougo/vimfiler'
      NeoBundle 'kevinw/pyflakes-vim'
      NeoBundle 'nathanaelkane/vim-indent-guides'
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
"vim-indent-guides
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
"jedi-vim

"disable syntastic
NeoBundleLazy "davidhalter/jedi-vim", {
      \ "autoload": {
      \   "filetypes": ["python", "python3", "djangohtml"],
      \ },
      \ "build": {
      \   "mac": "pip install jedi",
      \   "unix": "pip install jedi",
      \ }}
let s:hooks = neobundle#get_hooks("jedi-vim")
function! s:hooks.on_source(bundle)
endfunction

let g:syntastic_mode_map = {
            \ 'mode': 'active',
            \ 'active_filetypes': ['php', 'coffeescript', 'sh', 'vim'],
            \ 'passive_filetypes': ['html', 'haskell', 'python']
            \}
"Vim括弧補完
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>
