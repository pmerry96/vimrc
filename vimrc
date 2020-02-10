start
colorscheme elflord

syntax enable "enable syntax processing

set number "show line numbers
set showcmd "shows cmd lien at bottom for in-file compilation 
set cursorline "shows the line the cursor is on
set showmatch "shows matching parens, brackets, or braces with highlight

set incsearch "searches show partial matches as well
"set ignorecase "search is case insensitive now - disabled for smartcase
set smartcase "switches to case sensitive when query has capital letter
set hlsearch "highlight matches in search

set autoindent "new lines inhearit indentation of previous line

set confirm "ask confirmation to close unsaved file
set noswapfile "no swap files will be created
"set spell "enables spellcheck - default is off (uncomment to enable)

set wildignore+=.swp "ignore swap files when opening
set lazyredraw "redraw screen only when necessary, save vm resources

set wildmenu "visual autocomplete for cmd menu

set wrap "enable text wrapping - visual only (does not advance insertion to new line, 
			" just places characters on the next line visually
set textwidth=100 "max line len is 100 chars now
set visualbell "visual indication instead of sound beep
set mouse=a "enable mouse/clicking in all modes


"The below three options mean you must use a double tab for makefile recipes
"to disable these lines, append a preceding " to the line, and it will comment
"the line out
set noexpandtab "tab does NOT insert spaces in place of tab
set tabstop=4 "number of visual spaces per TAB
set softtabstop=4 "sets tab to 4 spaces when editing, ie remove 4 spaces when backspacing a tab

set colorcolumn=100 "voided with line set textwidth = 120
highlight ColorColumn guibg=#155460 "highlights the 120 char column

"the below 4 lines allow folding. IE you can collapes
"large blocks (IE for/while loops) based on indents. This can
"allow easier code navigation
set foldenable
"set nofoldenable " swap the comment between the foldenable and nofoldenable line to disable folding
set foldlevelstart=99 "start all code unfolded
set foldmethod=indent
set foldnestmax=10
set foldlevel=2

nnoremap <space> za
    "remap the fold char from 'za' to <space>, only when not in insert mode

nnoremap B ^
    "B now moves you to beginning of line when in normal  mode
nnoremap E $
    "E now moves you to end of line when in normal  mode

"unbind the orignal beginning/end line keys
nnoremap $ <nop>
nnoremap ^ <nop>


"highlight last inserted text
nnoremap gV `[v`]

"add 'jk' to get out of insert mode
inoremap jk <esc> 
    "note you can still use <esc>

"add 'jk' to get into insert mode
nnoremap jk i

let mapleader="," 
    "anywhere you see <leader> below, it means a comma

"add in 'superundo'
"vim stores the changes as a tree, this command allows 
"a user to see the entire tree in graphical form
"for easier traversal
"the 'superundo' bind is 'u,' 
nnoremap <leader>u :GundoToggle<CR>


"session save, you can re-open a session with 
"$ vim -S
"note to save a session type exactly ":mksession" while in normal mode
nnoremap <leader>s :mksession<CR>

set backup "enable backing up files. if lost, check these dirs
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

