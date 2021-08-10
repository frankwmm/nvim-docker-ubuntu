"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
"𝕓𝕪 𝕁𝕠𝕒𝕢𝕦𝕚𝕟 𝕍𝕒𝕣𝕖𝕝𝕒 𝕐𝕋               		
"https://www.youtube.com/channel/UCw1Ipy5_P1OL0zUJMfYC7-A					    

"---------------------------------vim config---------------------------- 
syntax on 
set number 
set mouse=a
set clipboard=unnamed
set showcmd
set ruler
set encoding=UTF-8
set showmatch
set sw=2
set relativenumber
let mapleader = " "
set laststatus=2
set backspace=2
set guioptions-=T
set guioptions-=L
"Get out of insert mode  
"Salir de modo insertar
imap hh <Esc>
imap HH <Esc>2
imap <C-c> <Esc>l


"############################# 				test from debian 		################################################# 

"Posicionarse al inicio o final de una linea
nmap n 0 
nmap m $

"Salir de modo insertar y guardar
imap hhw <Esc> :w <Enter>

"Salir de modo insert, guardar y subida rapida mediante git GGG -low importance 
imap hhwg <Esc>:w<Enter> :! git add . & git commit -m "update hgit L/I" & git push -u origin master <Enter>

"mueve bloques de codigo en modo visual o V-Line
"Moves Blocks of code in visual mode or V-Line xnoremap K :move '<-2<CR>gv-gv xnoremap J :move '>+1<CR>gv-gv 
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv 
" Better indenting
" Mejor Indentación
vnoremap < <gv
vnoremap > >gv

"-------------------------------Sources-------------------------------
source /root/.config/nvim/plugins/plugins.vim
source /root/.config/nvim/plugins/plug-config.vim
source /root/.config/nvim/themes/onedark.vim
"--------------------------------Plugins Config--------------------------------------------

" toggle terminal
nnoremap <silent> <C-z> :ToggleTerminal<Enter>
tnoremap <silent> <C-z> <C-\><C-n>:ToggleTerminal<Enter>
"////

"Salir y seleccionar arriba del terminal 
tnoremap <silent> <C-q><C-q> <C-\><C-n><C-w><C-k>

"Regresar al terminal abierto
nnoremap <silent> <leader>t <C-w><C-j>i

" Abrir terminal abajo
"nnoremap <silent> <leader>t :ToggleTerminal<Enter><C-\><C-n>:split<Enter><C-w><C-r><C-w><C-k><TAB>
nnoremap <silent> <C-t> :split<Enter>:terminal<Enter><C-\><C-n><C-w><C-r><C-w><C--><C-w><C--><C-w><C-->i

"Minimizar y Maximizar terminal
tnoremap <silent> <C-n><C-n> <C-\><C-n><C-w><C--><C-w><C--><C-w><C--><C-w><C-->i
tnoremap <silent> <C-m><C-m> <C-\><C-n><C-w><C-+><C-w><C-+><C-w><C-+><C-w><C-+>i
"=======================================================================================



"Git add .
nmap <leader>ga :! git add . 

"Git commit  
nmap <leader>gc :! git commit -m " " 

"Git push to master
nmap <leader>gp :! git push -u origin master

"Git Fast Push To Master - Add with Commit -Update Low Importance
nmap <leader>ggg :! git add . & git commit -m "update L/I" & git push -u origin master <Enter>

"Git GCG git customizable push
imap hhwgc <Esc>:w<Enter>:! git add . & git commit -m "GCG update" & git push -u origin master



"OPEN VN notions
nmap <leader>notion :tabnew C:\Users\Acer\AppData\Local\nvim\VN-notions.md<Enter>

"OPEN VN notions
nmap <leader>init :tabnew C:\Users\Acer\AppData\Local\nvim\init.vim<Enter> 


"split windows HORIZONTAL
nmap <leader>hw :sp <CR>

"split windows VERTICAL
nmap <leader>vw :vs<CR>

"save file
"guardar archivo
nmap <leader>w :w <CR>
"cerrar ventana
"close current  window
"nmap <C-w> :q <CR>
nmap <leader>q :q <CR>
nmap <leader>so :so%<CR>
"search commands 
"comandos de busqueda
nmap <leader>gs :CocSearch
nmap <leader>fs :FZF<CR>
nmap <leader>rg :Rg<CR>
"configuracion de tabs
let g:indentLine_enabled = 1
let g:indentLine_char = '/indent/'
let g:indentLine_faster = 1
let g:indentLine_fileTypeExclude=["nerdtree"]

"abrir Nerdtree

"toggle open nerdtree
nmap <Leader>e :NERDTreeToggle<CR>

"toggle close nerdtree
nmap <Leader>ee :NERDTreeToggleVCS<CR>

"open cocExplorer 
"Buscar dos carácteres con easymotion
"Search for two chars with easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" TAB in general mode will move to text buffer
" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
" SHIFT-TAB va para atras 
nnoremap <silent> <S-TAB> :bprevious<CR>
"close buffer
"cerrar buffer
nmap <leader>bd :bdelete<CR>
"--gruvbox config--
"colorscheme onedark
"let g:gruvbox_contrast_dark = "medium"

"Prettier
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

"Rainbow Colorizador de corchetes 
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

set cmdheight=1
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0
colorscheme tokyonight
"Close tags automatically
"Cerrar tags automaticamente let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js' -----------------------------------------------------------------



"NeoTerm code 

set nocompatible
filetype off

let &runtimepath.=',~/.vim/bundle/neoterm'

filetype plugin on


"----------------------------------------------


"Ruta de python 
let g:python3_host_prog = '/Users/Acer/AppData/Local/Programs/Python/Python39/python.exe'
let g:python_host_prog ='/python27/python.exe'



"-----------------------------------------------------------------------------------------
"Inteto de usar ruta de python
"let g:python_host_prog ='/Users/Acer/AppData/Local/Programs/Python/Python39/python.exe'
"let g:python3_host_prog = '/Users/Acer/AppData/Local/Programs/Python/Python39/python.exe'

"Inteto de usar ruta de python
"let g:python_host_prog = 'C:\Users\Acer\AppData\Local\Programs\Python\Python3\python.exe'
"let g:python3_host_prog = 'C:\Users\Acer\AppData\Local\Programs\Python\Python3\python.exe'

