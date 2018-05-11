set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The-NERD-tree
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

" Git
Plugin 'taq/vim-git-branch-info'
Plugin 'tpope/vim-fugitive'

" Taglist
Plugin 'vim-scripts/taglist.vim'
Plugin 'jeetsukumaran/vim-buffergator'

" color colorscheme
Plugin 'MxBird/CodeSchool.vim'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'spf13/vim-colors'

" Auto close the block
Plugin 'vim-scripts/matchit.zip'
Plugin 'jiangmiao/auto-pairs'

" ctrlp.vim
Plugin 'kien/ctrlp.vim'

" vim plugin for yaml
Plugin 'mrk21/yaml-vim'
Plugin 'chase/vim-ansible-yaml'
"Plugin 'stephpy/vim-yaml'

" vim plugin for Ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'

" tabular #code formate
Plugin 'godlygeek/tabular'

" Yggdroot indentLine
Plugin 'Yggdroot/indentLine'
"Plugin 'mangege/web-indent'

" Vim js more beatiful
"Plugin 'maksimr/vim-jsbeautify'
"Plugin 'einars/js-beautify'
Plugin 'posva/vim-vue'

" JS completion
"Plugin 'ahayman/vim-nodejs-complete'

" SuperTab for autocomplete
Plugin 'ervandew/supertab'

call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
filetype plugin on

" TagList setting {
  " Show Tlist on the right
  let Tlist_Use_Right_Window=1

  " Close vim when Tlist is the last window
  let Tlist_Exit_OnlyWindow=1

  " Show Tlist only one file
  let Tlist_Show_One_File=1

  " Get focus when open the Tlist
  let Tlist_GainFocus_On_ToggleOpen=1

  " Mapping <F8>to Toggle the Tlist
  map <C-o> :TlistToggle<cr>
" }


" NERDTree setting {
  map <C-g> :NERDTreeToggle<cr>
  let NERDTreeIgnore = ['\.sock$', '.pyc', '.swp', 'rdb']
" }

" format setting {
  " 开始行号
  set number
  " 设定 << 和 >> 命令移动时的宽度为 4
  set shiftwidth=4
  " 使得按退格键时可以一次删掉 4 个空格
  set softtabstop=4
  " 设定 tab 长度为 4
  set tabstop=4
  " 设定提示宽度的标尺为80个字符
  set cc=80
  " 光标距离上下边距行数
  set so=3
  " 为这些语言设置缩进风格 {
    autocmd FileType ruby       set shiftwidth=2 | set expandtab | set softtabstop=2
    autocmd FileType erlang     set shiftwidth=2 | set expandtab
    autocmd FileType python     set shiftwidth=4 | set expandtab | setlocal foldmethod=indent
    autocmd FileType php        set shiftwidth=4 | set expandtab
    autocmd FileType html       set shiftwidth=2 | set expandtab | set softtabstop=2
    autocmd FileType vue       set shiftwidth=2 | set expandtab | set softtabstop=2
    autocmd FileType eruby      set shiftwidth=2 | set expandtab | set softtabstop=2
    autocmd FileType javascript set shiftwidth=4 | set expandtab | set softtabstop=4
    autocmd FileType go         set shiftwidth=4 | set softtabstop=2
  " }

  " 设置代码折叠 {
  "set foldmethod=marker
  set foldmethod=indent
  set foldnestmax=3
  set foldclose=all
  set foldenable
  " }
" }

" display setting {
  " 显示状态栏 (默认值为 1, 无法显示状态栏)
  "set laststatus=2
  " 搜索时高亮显示被找到的文本
  set hlsearch
  " 输入搜索内容时就显示搜索结果
  set incsearch
  " 显示tab以及空格
  set list
  set listchars=tab:>-,trail:·
  " syntax on
  syntax on
  " 设置backspace
  set backspace=indent,eol,start
  "set lazyredraw
" }

" key map {
  " <leader> key setting {
    let mapleader = ","
    let g:mapleader = ","
  " }

  " fast change panel {
    nmap <Tab> <C-w>w
    nmap <c-h> <c-w><c-h>
    nmap <c-j> <c-w><c-j>
    nmap <c-k> <c-w><c-k>
    nmap <c-l> <c-w><c-l>
  " }

  " 快速移动行
  nnoremap ∆ :m .+1<CR>==
  nnoremap ˚ :m .-2<CR>==
  inoremap ∆ <Esc>:m .+1<CR>==gi
  inoremap ˚ <Esc>:m .-2<CR>==gi
  vnoremap ∆ :m '>+1<CR>gv=gv
  vnoremap ˚ :m '<-2<CR>gv=gv

  " 快速退出
  map <leader>q :q<cr>
  map <leader>qq :q!<cr>
  " 快速保存
  nmap <leader>w :w!<CR>
  " 快速保存并退出
  map <leader>wq :wq<cr>
" }


" other setting {
  " Set to auto read when a file is changed from the outside
  set autoread
  " no backup
  set nobackup
  " 自动缩进
  set autoindent
  " remove bell
  set vb
  " 让Vim默认使用系统的剪切板
  set clipboard=unnamed

  " Vim使用的ctag  已经不用了系统的ctags已经软连接到/usr/local/bin/ctags
  let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'

  " status自定义显示 {
  set statusline=\ Ray 
  set statusline+=\ ░\ Git:\ %{GitBranchInfoTokens()[0]}\ ░
  set statusline+=\ %f%m
  set statusline+=%=%{''.(&fenc!=''?&fenc:&enc).''}
  set statusline+=\ ░\ %{&ff}
  set statusline+=\ ░\ %y
  set statusline+=\ ░\ [%-8.(%l,%c%)\ %-4.(%p%%%)]
  " }

  " 设置complete格式 {
  set completeopt=longest,menu
  " }

  "vim-flake8 python plugin
  "autocmd BufWritePost *.py call Flake8()
  "map <leader>i :call Flake8()<CR>
  "let g:flake8_ignore="F403,E501"

  " 设置代码indentLine的标示
  let g:indentLine_char = '┆'
  let g:indentLine_color_term = 239

  " 设置命名列表 {
  set wildmode=list:longest
  set wildmenu
  set wildignore=.*,*.o,*.obj.*.~
  " }

  " Tabular config and key map {
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
  inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
  function! s:align()
    let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
      let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
      let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
      Tabularize/|/l1
      normal! 0
      call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
  endfunction
  " }
" }


"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
