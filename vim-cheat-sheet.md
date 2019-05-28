# VIM Cheat Sheet

## Open References in file

`<C-w>f` - file under cursor open in new horzontial split  
`<C-w>gf` - file under cursor open in new tab

`gf` - open file under cursor  
`gx` - open web link under cursor  

## Navigation                                                                        

`<C-o>` - go back

`zz` - scroll center  
`zt` - scroll top  
`zb` - scroll bottom  

`H` - cursor top  
`M` - cursor middle  
`L` - cursor bottom  

`<C-j> (original <C-w>j)` - Focus on spit below of current one  
`<C-k> (original <C-w>k)` - Focus on spit above of current one  
`<C-h> (original <C-w>h)` - Focus on spit left hand side of current one  
`<C-l> (original <C-w>l)` - Focus on spit right hand side of current one  

## Modify Content

`gu` - lowercase  
`gU` - uppercase  

`gqq` - wrap a 80  
`gq{some sign}` - wrap till {some sign}  

## Spell Check

`<F7>` - general _:set spell_  
`[s` - go to previous typo  
`]s` - go to next typo

`z= (cursor on typo)` - get list of correction suggestions  

`zg (cursor on word)` - add word to good word list  
`zug (cursor on word)` - remove word from **g**ood word list  
`zw (cursor on word)` - add word to **w**rong word list  
`zuw (cursor on word)` - remove word from **w**rong word list  

## EX Commands

`:Ack {pattern}` - global search with result file viewer  
`:! {shell command}` - run shell commands in vim  

## Auto Completion

> Be in insert mode!

`<C-x><C-f>` - files completion  
`<C-X><C-L>` - line completion  
`<C-X><C-O>` - omni completion  

`<C-N>` - word completion (work must be already used)  

## REgister

`<"-{some key}-y>` - copy selected to {some key}  
`<"-{some key}-p>` - past saved at {some key}  

> `*` and `+` are clipboards
>
## Good to Know

`ci{pattern}` - change word after pattern  
`ca{pattern}` - change word with pattern  

## HELP!

`<K>` (on config key) - open documentation

