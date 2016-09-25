set nocompatible

filetype off
filetype plugin indent off

set number          
set laststatus=2    
set cmdheight=2     
set showmatch       
set helpheight=999  
set list            
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:<
set t_Co=256        

set backspace=indent,eol,start 
set whichwrap=b,s,h,l,<,>,[,]  
set scrolloff=4                
set sidescrolloff=16           

set confirm    
set hidden     
set autoread   
set nobackup   
set noswapfile 

set hlsearch   
set incsearch  
set ignorecase 
set smartcase  
set wrapscan   
set gdefault   

set expandtab     
set tabstop=4     
set shiftwidth=4  
set softtabstop=4 

set autoindent    
set smartindent   

if (exists('+colorcolumn'))
  set colorcolumn=80
  highlight ColorColumn ctermbg=9
endif

set clipboard=unnamed,unnamedplus
set mouse=a
set shellslash

set wildmenu wildmode=list:longest,full
set history=10000

set visualbell t_vb=
set noerrorbells 

set tags+=./tags;
nnoremap <C-]> g<C-]>

let g:email = "t.hirayama@bravesoft.co.jp"
let g:username = "Takayuki_Hirayama"

augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END

autocmd BufNewFile,BufRead *.rb nnoremap <C-e> :!ruby %
autocmd BufNewFile,BufRead *.py nnoremap <C-e> :!python %
autocmd BufNewFile,BufRead *.pl nnoremap <C-e> :!perl %
autocmd BufNewFile,BufRead *.cpp nnoremap <C-c> :!g++ %
autocmd BufNewFile,BufRead *.cpp nnoremap <C-e> :!./a.out
autocmd BufNewFile,BufRead *.html nnoremap <C-e> :!open %

nnoremap <C-l> :%s///gc

filetype plugin indent off

set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ },
\ }

" Colorschemes 
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'croaker/mustang-vim'
NeoBundle 'jeffreyiacono/vim-colors-wombat'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'vim-scripts/Lucius'
NeoBundle 'vim-scripts/Zenburn'
NeoBundle 'mrkn/mrkn256.vim'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'therubymug/vim-pyte'
NeoBundle 'tomasr/molokai'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'sickill/vim-monokai'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'sjl/badwolf'
NeoBundle 'ciaranm/inkpot'
NeoBundle 'aereal/vim-colors-japanesque'
NeoBundle 'ujihisa/unite-colorscheme'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'

" Syntax Check
NeoBundle 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pyflakes']

" Python
NeoBundle 'davidhalter/jedi-vim'
" NeoBundle 'kevinw/pyflakes-vim'
NeoBundle 'aperezdc/vim-template'

NeoBundle 'justmao945/vim-clang'

" NeoBundle 'violetyk/neocomplete-php.vim'
" let g:neocomplete_php_locale = 'ja'
" PHP Keyword Complement"
NeoBundle "Shougo/neocomplcache"
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_manual_completion_start_length = 0
let g:neocomplcache_caching_percent_in_statusline = 1
let g:neocomplcache_enable_skip_completion = 1
let g:neocomplcache_skip_input_time = '0.5'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
 
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: "\<TAB>"

let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/neosnippets/'
 
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

NeoBundle 'mattn/emmet-vim'

NeoBundle 'scrooloose/nerdtree'
nnoremap <silent><C-t> :NERDTree<CR>
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

NeoBundle 'soramugi/auto-ctags.vim'

NeoBundle 'itchyny/lightline.vim'

NeoBundle 'nathanaelkane/vim-indent-guides'
" vim-indent-guides
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=238
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=2

NeoBundle 'violetyk/cake.vim'
let g:cakephp_enable_auto_mode=1

call neobundle#end()

" Required:

NeoBundleCheck
filetype indent plugin on

autocmd FileType python,pyrex setl autoindent
autocmd FileType python,pyrex setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python,pyrex setl tabstop=4 expandtab shiftwidth=4 softtabstop=4
autocmd BufNewFile,BufRead *.php :set dictionary=~/.vim/dictinary/php.dict filetype=php

syntax enable
colorscheme inkpot
" colorscheme japanesque

nnoremap <silent><C-o> :e sftp://[sftp-1]182.171.81.180/ota/<CR>

