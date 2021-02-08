" Plugins

call plug#begin('~/.config/nvim/plugins')

Plug 'joshdick/onedark.vim'	" theme
Plug 'scrooloose/nerdtree'	" explorador de archivos
Plug 'itchyny/Lightline.vim'	
Plug 'neoclide/coc.nvim'

call plug#end()

" Configuración de plugins

map <F2> :NERDTreeToggle<CR>
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

" Configuración
set title
set relativenumber
set mouse=a

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
