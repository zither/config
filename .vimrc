"""""""""""""""""""""""""""""""""""""""
"Vundle
"""""""""""""""""""""""""""""""""""""""
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" My Bundles here:

" vim-scripts repos

Bundle 'gmarik/vundle'

" Syntax
"Bundle 'asciidoc.vim'
"Bundle 'confluencewiki.vim'
Bundle 'alswl/html5.vim'
"Bundle 'JavaScript-syntax'
"Bundle 'mako.vim'
"Bundle 'moin.vim'
"Bundle 'python.vim--Vasiliev'
"Bundle 'xml.vim'
"Bundle 'less'
"Bundle 'hallison/vim-markdown'
Bundle 'tpope/vim-markdown'
"Bundle 'wikipedia.vim'
"Bundle 'derekwyatt/vim-scala'
"Bundle 'alswl/play2vim'
"Bundle 'tpope/vim-haml'
"Bundle 'kchmck/vim-coffee-script'
"Bundle 'vim-ruby/vim-ruby'
"Bundle 'django.vim'
"Bundle 'nginx.vim'

" Color
"Bundle 'desert256.vim'

" Ftplugin
"Bundle 'python_fold'

" Indent
"Bundle 'indent/html.vim'
"Bundle 'IndentAnything'
"Bundle 'Javascript-Indentation'
"Bundle 'mako.vim--Torborg'
"Bundle 'gg/python.vim'

" Plugin
Bundle 'The-NERD-tree'
Bundle 'DoxygenToolkit.vim'
Bundle 'taglist.vim'
Bundle 'css_color.vim'
Bundle 'snipMate'
"Bundle 'AutoClose--Alves'
"Bundle 'auto_mkdir'
"Bundle 'cecutil'
"Bundle 'fcitx.vim'
"Bundle 'FencView.vim'
"Bundle 'FuzzyFinder'
"Bundle 'jsbeautify'
"Bundle 'L9'
"Bundle 'Mark'
"Bundle 'matrix.vim'
"Bundle 'mru.vim'
"Bundle 'The-NERD-Commenter'
"Bundle 'restart.vim'
"Bundle 'templates.vim'
"Bundle 'vimim.vim'
"Bundle 'ZenCoding.vim'
"Bundle 'hallettj/jslint.vim'
"Bundle 'vcscommand.vim'
"Bundle 'TaskList.vim'
"Bundle 'pep8'
"Bundle 'git://github.com/kevinw/pyflakes-vim.git'
"Bundle 'sontek/rope-vim'
"Bundle 'project.tar.gz'
"Bundle 'minibufexplorerpp'
"Bundle 'bufexplorer.zip'
"Bundle 'Align.vim'
"Bundle 'SQLUtilities'
"Bundle 'matchit.zip'
"Bundle 'xmledit'

" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gvim代码高亮设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
syntax sync fromstart        " 防止代码过长时的代码泛白问题
colorscheme lucius           " 适合Ruby开发的蓝色主题

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 字体及编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fileencodings=utf-8,gbk,ucs-bom,default,latin1
set termencoding=utf-8
set encoding=utf-8
set guifont=Monaco\ 10      " 适合Ruby开发的字体 && 字号
"set guifont=Consolas:h10.5:cANSI
set guifontwide=Microsoft\YaHei:h10
set helplang=cn
language messages zh_CN.utf-8

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
behave mswin                 " 启用右键菜单
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
autocmd FileType ruby set tabstop=8|set shiftwidth=2|set expandtab    " 打开ruby时使用2个空格为缩进
" 用空格键来开关折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin NERDTree configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F10> :NERDTreeToggle
let NERDTreeChDirMode=2

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
" DoxAuthor Dox DoxBlock¿?¿?¿?¿?¿?¿?¿?¿?¿?
map <F3>a : DoxAuthor
map <F3>f : Dox
map <F3>b : DoxBlock
map <F3>c O/** */
