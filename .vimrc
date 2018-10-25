" Delete trailing white space on save                                            
" autocmd BufWritePre * :%s/\s\+$//e        " remove white spaces in all files
autocmd BufWritePre *.js :%s/\s\+$//e                                           
autocmd BufWritePre *.ts :%s/\s\+$//e    
autocmd BufWritePre *.html :%s/\s\+$//e                                          
autocmd BufWritePre *.css :%s/\s\+$//e                                         
autocmd BufWritePre *.sass :%s/\s\+$//e                                         
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.yml :%s/\s\+$//e 

" Tab Config                                                                    
set tabstop=2       " number of visual spaces per TAB                           
set softtabstop=2   " number of spaces in tab when editing                      
set shiftwidth=2         
set expandtab       " Use spaces instead of tabs
set smarttab        " Be smart when using tabs ;) -> Uses shiftwidth instead of tabstop at                                                 

" UI Config                                                                     
set number          " show line numbers 

colorscheme pablo 
set background=dark
"------------------------------------------------------------------------------

" Always display the status line
set laststatus=2

" Display the cursor position
set ruler

" Set utf8 as standard encoding and en_US as the standard language              
set encoding=utf8                                                                                   

" Enable syntax highlighting
syntax on

" Better command-line completion
set wildmenu                                                                    
set wildmode=longest,list 


" Mapping
inoremap kj <ESC>                                                               
inoremap jk <ESC>                                                               
nnoremap j gj          " gj to move down one displayed line                                                          
nnoremap k gk          " gk to move up one displayed line 

nmap <leader>w :w!<cr>       " fast save                                                           
nmap <leader>q :wq!<cr>     " fast quite with save

" Git commits configs                                                                  
autocmd FileType gitcommit setlocal spell                                       
autocmd FileType gitcommit setlocal textwidth=80                                
                                                                                 
" paste                                                                         
set pastetoggle=<leader>p

" Toggle spellcheck                                                              
nnoremap <F7> :setlocal spell! spell?<CR>                                       
inoremap <F7> <C-o>::setlocal spell! spell?<CR>

" Search
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Highlight searches 
set hlsearch

" Smart way to move between splits
map <C-j> <C-W>j                                                                          
map <C-k> <C-W>k                                                                          
map <C-h> <C-W>h                                                                          
map <C-l> <C-W>l 
