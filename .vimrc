" 快捷鍵     |    套件
" -----------|------------
"  <F2>      | NERDTree
"  <F3>      | undotree
"  <F4>      | Tagbar 
"  <F5>      | buffers switch
"  <F6>      | indentLine
"  <F7>      | eslite
"  <F9>/<F10>| 切換 color scheme
"  \t        | command-t
"  \c<space> | 註解
"

execute pathogen#infect()

set nocompatible              " be iMproved, required

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
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" 速寫HTML
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} 
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}


" zen coding功能
Plugin 'mattn/emmet-vim'
" 狀態列
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" google color scheme
Plugin 'google/vim-colorscheme-primary'
" javascript Syntax Highlighting Plugin
Plugin 'https://github.com/pangloss/vim-javascript.git'
" snipmate 速寫HTML(換ultisnips)
" Bundle 'MarcWeber/vim-addon-mw-utils'
" Bundle 'tomtom/tlib_vim'
" Bundle 'garbas/vim-snipmate'
" Bundle 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" taglist 將程式碼當中的變數函數等tag全部顯示在Symbol視窗
" Plugin 'https://github.com/vim-scripts/taglist.vim.git'
" 程式碼自動補字
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
" 可以在vim裡快速尋找外面的文件並打開
Plugin 'https://github.com/kien/ctrlp.vim.git'
" NERDTree
Plugin 'https://github.com/scrooloose/nerdtree.git'
" nerdtree-git-plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'
" 批量註解
Plugin 'scrooloose/nerdcommenter'
" vim-easymotion 快速移動
Plugin 'https://github.com/easymotion/vim-easymotion.git'
" incsearch-fuzzy.vim 全文搜尋工具
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-fuzzy.vim'
" 可對多游標編輯
Plugin 'https://github.com/terryma/vim-multiple-cursors.git'
" 顯示縮排對齊線
Plugin 'Yggdroot/indentLine'
" 符號自動補齊
Plugin 'jiangmiao/auto-pairs'
" 顯示git diff
Plugin 'airblade/vim-gitgutter'
" 紀錄vim編輯紀錄 
Plugin 'mbbill/undotree'
" 類似taglist
Plugin 'majutsushi/tagbar'
" 語法檢查
Plugin 'scrooloose/syntastic'
" EJS syntastic heightlight
Bundle 'nikvdp/ejs-syntax'
" color plugin
Plugin 'https://github.com/tomasr/molokai.git'
" color plugin
Plugin 'https://github.com/w0ng/vim-hybrid.git'
" 提供 nerdtree 時有小 icon 以更方便知道檔案類型
" Plugin 'ryanoasis/vim-devicons'
" Plugin 'ryanoasis/vim-webdevicons'
" 可以同時對字串的前後""做修改
Plugin 'https://github.com/tpope/vim-surround.git'
" 顯示 color (ex: yellow  #00FFFF)
Bundle 'https://github.com/gorodinskiy/vim-coloresque.git'
" 快速換 heightlight
Plugin 'chxuan/change-colorscheme'
" Renpy vim syntax highlight
Plugin 'chaimleib/vim-renpy'
Plugin 'posva/vim-vue'

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

" 根據語法折疊
set foldmethod=syntax

" Go to definition else declaration
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 主动调用补全
let g:ycm_key_invoke_completion = '<C-a>'


" vim-airline 設定 "
" set status line
set laststatus=2
" enable powerline-fonts
let g:airline_powerline_fonts = 1
" set theme
" let g:airline_theme='light'
" enable tabline
let g:airline#extensions#tabline#enabled = 1
" set left separator
"let g:airline#extensions#tabline#left_sep = ' '
" set left separator which are not editting
"let g:airline#extensions#tabline#left_alt_sep = '|'
" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1


" google color scheme
" syntax enable
" set t_Co=256
" set background=dark
" colorscheme primary

" Molokai color 
colorscheme molokai
let g:molokai_termcolors=256
set t_Co=256


" vim-hybrid
" set t_Co=256
" set background=dark
" colorscheme hybrid

"  enable javascript Syntax Highlighting Plugin
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
set foldmethod=syntax


" 其他設定
"set mouse=a
set encoding=utf8
set number
" set relativenumber
set expandtab
set tabstop=2
set shiftwidth=2
set noeb
set autochdir
set guifont=Hack\ 12
set cursorline
set cursorcolumn
set history=100
nnoremap <F5> :buffers<CR>:buffer<Space>
map <f9> :Tlist<CR>
" inoremap ( ()<LEFT>
" inoremap [ []<LEFT>
" inoremap { {}<LEFT>
" inoremap ' ''<LEFT>
" inoremap " ""<LEFT>

" 加速vim
set ttyfast
set lazyredraw
" switch buffer
nmap <C-b>n  :bnext<CR>
nmap <C-b>p  :bprev<CR>

" NERD Commenter 註解時多加空格
let g:NERDSpaceDelims=1


" incsearch-fuzzy 全文搜尋
" map z/ <Plug>(incsearch-fuzzy-/)
" map z? <Plug>(incsearch-fuzzy-?)
" map zg/ <Plug>(incsearch-fuzzy-stay)
" map z/ <Plug>(incsearch-fuzzyspell-/)
" map z? <Plug>(incsearch-fuzzyspell-?)
" map zg/ <Plug>(incsearch-fuzzyspell-stay)
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)



" easymotion更改快捷键
" map f <Plug>(easymotion-prefix)
map ff <Plug>(easymotion-s)
" map fs <Plug>(easymotion-f)
" map fl <Plug>(easymotion-lineforward)
" map fj <Plug>(easymotion-j)
" map fk <Plug>(easymotion-k)
" map fh <Plug>(easymotion-linebackward)
" 忽略大小写
let g:EasyMotion_smartcase = 1

" NERD Tree
nnoremap <silent> <F2> :NERDTree<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"



" undotree
nnoremap <F3> :UndotreeToggle<cr>
" Tagbar
nmap <F4> :TagbarToggle<CR>


" syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exec = 'eslint'
nnoremap <F7> :call BTNEslint()<CR>

function! BTNEslint()
  if exists("g:qwindow")
    :lclose
    unlet g:qwindow
  else
    try
      :lopen 6
      let g:qwindow = 1
    catch 
      echo "No Errors found!"
    endtry
  endif
endfunction

" indentLine 顯示縮排對齊線
nmap <F6> :IndentLinesToggle<CR>


" change-colorscheme
map <F10> :NextColorScheme<CR>
imap <F10> <ESC> :NextColorScheme<CR>
map <F9> :PreviousColorScheme<CR>
imap <F9> <ESC> :PreviousColorScheme<CR>





" ctrlp
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|hg|svn|rvm)$','file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$', }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

syntax on



autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
au BufNewFile,BufRead *.ejs set filetype=ejs
" au BufNewFile,BufRead *.ejs set filetype=javascript
" au BufNewFile,BufRead *.ejs set filetype=html
