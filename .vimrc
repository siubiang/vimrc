" Encoding ======================================
set encoding=utf-8
scriptencoding utf-8

" / Encoding ------------------------------------


" dein Scripts ==================================
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
call dein#add('tpope/vim-fugitive') " Git操作全般
call dein#add('airblade/vim-gitgutter') " Git差異を行に表示
call dein#add('scrooloose/nerdtree') " ファイルツリー
nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap <Space>n :NERDTree<CR>
nnoremap <Space>t :NERDTreeToggle<CR>
nnoremap <Space>f :NERDTreeFind<CR>
call dein#add('vim-scripts/vim-auto-save') " 自動保存
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

" / dein Scripts --------------------------------

set number " 行番号

set noswapfile " .swpを残さない

set expandtab " タブ入力を複数の空白入力に置き換える
set tabstop=2 " 画面上でタブ文字が占める幅を2に
set shiftwidth=0 " 自動インデントでずれる幅をtabstopと同じに
" 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅をshiftwidthと同じに
set softtabstop=-1
set autoindent " 改行時に前の行のインデントを継続する
set smartindent " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
" Python ではタブ幅を4に
autocmd FileType python setlocal tabstop=4

set hlsearch " 検索の一致を全て強調
set ignorecase " 検索で大文字小文字を無視
set incsearch " 検索途中でも結果表示
set smartcase " 大文字が含まれる検索でignorecaseを無視
nnoremap <C-d> :noh<CR> " ハイライトを消す

set laststatus=2 " ステータス行を常に表示
set ruler " カーソル位置の表示

syntax on " シンタックスハイライトを有効に

filetype plugin indent on " ファイルタイプの自動検出

set hidden " バッファを保持

" <BS> <Del> C-W C-U の動きを有効に
set backspace=indent,eol,start

set mouse=a " マウスを全てのモードで有効に