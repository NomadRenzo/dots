" ---------Rough Draft--------
" filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on
filetype plugin indent on
let g:pydiction_location = '~/.vim/bundle/pydiction/vimfiles/ftplugin/complete-dict'
:colorscheme elflord


" pydiction was rebound from tab to <c-j> in pydiction.vim

" stores marks in a viminfo file for up to 1000 files
set viminfo='1000

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd
" Highlight search
set hlsearch

"folding
set background=dark
" Folding settings
set foldmethod=indent
set foldnestmax=1
nnoremap <space> za

" crazy syntax code
" adds to statusline
set statusline=%f-
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}

" set paste toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Use case insensitive search, except when using capital letters
set ignorecase
set title
set smartcase
" When you scroll off the screen, this will keep X rows below your cursor
set scrolloff=3
" jumps to search word as you type (annoying but excellent)
:set incsearch
:set wildignore=*.o,*.obj,*.bak,*.exe

"Tabs
map <ESC>[D :tabp<cr>
map <ESC>[A :tabr<cr>
map <ESC>[C :tabn<cr>
map <ESC>[B :tabl<cr>
map <C-J> :tabp<cr>
map <C-K> :tabn<cr>

"Tab completion stuff
function! Tab_Or_Complete()
	if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
		return "\<C-N>"
	else
		return "\<Tab>"
	endif
endfunction
" :inoremap <c-j> <C-R>=Tab_Or_Complete()<CR>
:inoremap <c-l> <c-x><c-l>


" adds to statusline
set statusline=%f-
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}
" Always display the status line, even if only one window is displayed
set laststatus=2



" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>


" Scroll faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
" paste above / below
nmap <leader>p o<Esc>p==
nmap <leader>P O<Esc>p==

"------Indenting Stuff---------

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Prevents annoying behavior of leaving behind comments on far left
set fo+=r

" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
set shiftwidth=4
set tabstop=4
set noexpandtab
:%retab!


" Sets wordwrap without inserting a linebreak
:set wrap
:set linebreak
:set nolist  " list disables linebreak
:set textwidth=0
:set wrapmargin=0

"--------Misc Stuff-----------

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number
" map f3 to toggle number
nnoremap <F3> :set nonumber!<CR>


" leader mappings
let mapleader = ","
:nmap <leader>z :%s#\<<c-r>=expand("<cword>")<cr>\>#
:vmap <leader>z :<C-U>%s/\<<c-r>*\>/
" quick save
noremap <Leader>w :update<CR>
" source $MYVIMRC reloads the saved $MYVIMRC
:nmap <Leader>s :source $MYVIMRC

" opens $MYVIMRC for editing, or use :tabedit $MYVIMRC
:nmap <Leader>v :e $MYVIMRC
" goes to the middle of a line
:nmap <Leader>m :call cursor(0, len(getline('.'))/2)<cr>

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

imap jk <Esc>

