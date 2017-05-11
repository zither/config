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
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}


Plugin 'The-NERD-tree'
Plugin 'DoxygenToolkit.vim'
Plugin 'taglist.vim'
Plugin 'ap/vim-css-color'
Plugin 'tobyS/vmustache'
Plugin 'tobyS/pdv'
Plugin 'SirVer/ultisnips'
Plugin 'jtratner/vim-flavored-markdown'

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
"
"
"
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gvim代码高亮设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set t_Co=256                 " 设置为256色
syntax enable                " 打开语法高亮
syntax sync fromstart        " 防止代码过长时的代码泛白问题
if has('gui_running')        " Gui 环境使用 lucius
    colorscheme lucius
else 
    "colorscheme solarized    " 终端下使用 solarized
    colorscheme Tomorrow-Night    " 终端下使用 solarized
endif
"set background=dark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 字体及编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set fileencodings=utf-8,gbk,ucs-bom,default,latin1
"set termencoding=utf-8
"set encoding=utf-8
"set guifont=Monaco\ 10      " 适合Ruby开发的字体 && 字号
"set guifont=Consolas:h10.5:cANSI
"set guifontwide=Microsoft\YaHei:h10
"set helplang=cn
"language messages zh_CN.utf-8
"set langmenu=en_US
"let $LANG = 'en_US'
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 代码缩紧相关设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4                " 设置tab键的宽度
set expandtab                " 用空格代替tab
set shiftwidth=4             " 换行时行间交错使用4个空格
"set autoindent             " 自动对齐
set cindent                  " 设置使用 C/C++ 语言的自动缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
"set backspace=2              " 设置退格键可用
set backspace=indent,eol,start
set softtabstop=4            " backspace会撤销4个空格
"set cindent shiftwidth=4     " 自动缩进4空格
"set smartindent              " 智能自动缩进
set ai!                      " 设置自动缩进

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gvim 其他设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"behave mswin                 " 启用右键菜单
set autochdir                " 自动cd到当前目录 使用NERDTree时非常方便
set nu!                      " 显示行号
set mouse=a                  " 启用鼠标
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 查找book时，当输入/b时会自动找到
set hlsearch                 " 开启高亮显示结果
set incsearch                " 开启实时搜索功能
set nowrapscan               " 搜索到文件两端时不重新搜索
set nocompatible             " 关闭兼容模式
set vb t_vb=                 " 关闭提示音
set hidden                   " 允许在有未保存的修改时切换缓冲区
set list                     " 显示Tab符，使用一高亮竖线代替
set listchars=tab:\|\ ,
filetype plugin on           " 启用自动补全
"filetype indent on          " 在ubuntu下启用该选项，PHP注释出错

set noerrorbells visualbell t_vb=        "关闭beep和flash
autocmd GUIEnter * set visualbell t_vb=  "关闭beep和flash
autocmd FileType ruby set tabstop=8|set shiftwidth=2|set expandtab    " 打开ruby时使用2个空格为缩进
" 用空格键来开关折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
inoremap jj <ESC>  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin NERDTree configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F10> :NERDTreeToggle
let NERDTreeChDirMode=2
autocmd BufEnter * lcd %:p:h

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Flavored-markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin taglist configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 30
let Tlist_Process_File_Always = 0
let Tlist_Show_Menu = 0
let Tlist_Sort_Type = "order"
let Tlist_Use_Horiz_Window = 0
let Tlist_WinWidth = 40
let tlist_php_settings = 'php;c:class;i:interfaces;d:constant;f:function'
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
map <F11> :TlistToggle

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin doxygen configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"doxygen setting
let g:DoxygenToolkit_authorName="JonChou <ilorn.mc@gmail.com>"
let g:DoxygenToolkit_briefTag_funcName="no"
let g:doxygen_enhanced_color=1
" DoxAuthor Dox DoxBlock
map <F3>a : DoxAuthor
map <F3>f : Dox
map <F3>b : DoxBlock
map <F3>c O/** */

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin php-doc configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
"nnoremap <C-P> :call PhpDocSingle()<CR> 
"vnoremap <C-P> :call PhpDocRange()<CR> 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ctags configuration for php-src
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set tags+=~/Documents/php-src-PHP-5.3/tags

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim 80 characters line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let &colorcolumn=81
highlight ColorColumn ctermbg=235 guibg=#2c2d27
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Pdv
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <C-p> :call pdv#DocumentWithSnip()<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
