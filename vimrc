start
colorscheme elflord

syntax enable "enable syntax processing

"""
""" Settings for organizing in-file view
"""
set number "show line numbers
set noexpandtab "tab does not insert spaces in place of tab
set tabstop=2 "number of visual spaces per tab
set softtabstop=2 "sets tab to 2 spaces when editing, ie remove 2 spaces when backspacing a tab
set autoindent


"""
""" Settings for in-file behavior
"""
set wrap "enable text wrapping (visual only, no newline insertion)
set textwidth=120 " max line length before wrapping
set mouse=a "enable mouse clicking in all modes
"set foldenable
set nofoldenable
set foldlevelstart=99
set foldmethod=indent
set foldnestmax=10
set foldlevel=2
"set cursorline "underline current line


"""
""" Settings for editor behaviors
"""
set showcmd "shows cmd lien at bottom for in-file compilation 
set showmatch "shows matching parens, brackets, or braces with highlight
set incsearch "searches show partial matches as well
set smartcase "switches to case sensitive when query has capital letter
set hlsearch "highlight matches in search
set confirm "ask confirmation to close unsaved file
set wildignore+=.swp "ignore swap files when opening
set wildmenu "visual autocomplete for cmd menu


"""
""" Additional Bindings
"""
"highlight last inserted text
nnoremap gV `[v`]


"""
""" Backup Behaviors
""'
set backup "enable backing up files. if lost, check these dirs
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

