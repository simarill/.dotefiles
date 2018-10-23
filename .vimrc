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
set expandtab       " tabs are spaces                                           
set shiftwidth=2                                                                

" UI Config                                                                     
set number          " show line numbers 
