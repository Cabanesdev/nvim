" Plugins

call plug#begin('~/.config/nvim/plugins')

Plug 'joshdick/onedark.vim'		" theme
Plug 'scrooloose/nerdtree'		" explorador de archivos
Plug 'itchyny/Lightline.vim' 	"Lightline  
Plug 'neoclide/coc.nvim'			" coc for autocompletion
Plug 'artur-shaik/vim-javacomplete2'
call plug#end()

" Configuración de plugins

map <F2> :NERDTreeToggle<CR> 	"F2 to open the nerdtree
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

" Configuración
set title
set relativenumber
set mouse=a
syntax on
colorscheme onedark
set cursorline
set colorcolumn=120

" Indent
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=2
set tabstop=2
