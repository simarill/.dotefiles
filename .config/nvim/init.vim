"  directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
"   " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Editor Settings
Plug 'tpope/vim-sensible'                " Default configuration
Plug 'tpope/vim-surround'

Plug 'wincent/ferret'                    " Better (grep) find and replace
Plug 'wincent/command-t'                 " File search in vim

Plug 'sheerun/vim-polyglot'              " Collection of language packages
Plug 'HerringtonDarkholme/yats.vim'      " ts syntax

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " clone fzf in ~/.fzf and run the install script
Plug 'junegunn/fzf.vim' " Config for fzf
Plug 'ctrlpvim/ctrlp.vim' " fizzy finder vim ignores node_modules thanks to ag

Plug 'scrooloose/nerdtree' " navigable tree in vim

" Colorschemes
Plug 'fcpg/vim-farout'
Plug 'kadekillary/skull-vim'

Plug 'ntpeters/vim-better-whitespace' " Highlight whitespaces

" Align
Plug 'junegunn/vim-easy-align'

" Initialize plugin system
call plug#end()

"-------------------------------------------------------------------------------
"                             Editor Settings
"-------------------------------------------------------------------------------
set encoding=utf-8
set noswapfile
" set path+=**                     " Include all subdrirectory when openening a project root

set number                       " Show line numbers in gutter
" set cursorline                   " Highlight current line
set showcmd                      " Display incomplete commands
" set switchbuf=usetab             " Try to reuse windows/tabs when switching buffers
" set mouse=n                      " Enable mouse for resizing and stuff
set showmatch                    " Highlight search results
set formatoptions+=j             " Remove comment leader when joining comment lines
set nojoinspaces                 " Only one space when joining lines

set ignorecase                   " search not casesensitive
" search can enforce in/casesensitive
" -> purely lowercase = case insensitively, contains uppercase character = case sensitively.
set smartcase

" Auto line break with full words
set formatoptions+=w
set tw=80
" Display ruler after 80 chars
set colorcolumn=80

" Colorscheme farout, skull
colorscheme farout
syntax on

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround                   " < and > shift to the next tab stop defined by shiftwidth.
set expandtab                    " Always use spaces instead of tabs
" set lazyredraw                   " don't bother updating screen during macro playback

" indent
set autoindent
"set smartindent


" Persintent undo
if has('persistent_undo')
  if exists('$SUDO_USER')
    set noundofile                    " don't create root-owned files
  else
    set undofile                      " actually use undo files
  endif
endif

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files..
  let g:ctrlp_user_command = 'ag --literal --files-with-matches --nocolor --hidden -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  if !exists(":Ag")
    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    nnoremap \ :Ag<SPACE>
  endif
endif

" Whitespaces
" `:ToggleWhitespace`
" `:StripWhitespace`
" let g:better_whitespace_ctermcolor='<desired_color>' " highlight with desired_color
let g:better_whitespace_enabled=1 " enable highlight whitespaces
let g:strip_whitespace_on_save=1 " delete whitespaces after save

"-------------------------------------------------------------------------------
"                              Key Mappings
"-------------------------------------------------------------------------------
" Easier Split Navigation via Ctrl + <Vim direction>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Get out of insert mode without hitting esc
imap jj <Esc>
imap jk <Esc>
imap kj <Esc>

" map leader (default: \)
let mapleader = "\<Space>"

"Toggle spellcheck
nnoremap <F7> :setlocal spell! spell?<CR>
inoremap <F7> <C-o>::setlocal spell! spell?<CR>

"NERDTree
" Open / close NERDTree
map <C-n> :NERDTreeToggle<CR>
" Show currently open file in NT
map <A-n> :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = ' '

"-------------------------------------------------------------------------------
"                          Tryouts
"
" let g:ackprg = 'ag --nogroup --nocolor --column'

" vim-easy-align
" Markdown table align: `gaip*|` (cursor at start of table)
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" use here INTERACTIVE MODE
" ([docs](https://github.com/junegunn/vim-easy-align#2-using-easyalign-command))
" Using predefined rules
":EasyAlign[!] [N-th] DELIMITER_KEY [OPTIONS]
" Using regular expression
" :EasyAlign[!] [N-th] /REGEXP/ [OPTIONS]

