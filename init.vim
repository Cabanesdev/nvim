" Plugins

call plug#begin('~/.config/nvim/plugins')

Plug 'patstockwell/vim-monokai-tasty' "theme
Plug 'scrooloose/nerdtree'		" explorador de archivos
Plug 'itchyny/Lightline.vim' 	"Lightline  
Plug 'neoclide/coc.nvim'			" coc for autocompletion

call plug#end()

" Configuración de plugins

map <F2> :NERDTreeToggle<CR> 	"F2 to open the nerdtree
let g:lightline = {
      \ 'colorscheme': 'monokai_tasty',
      \ }

" Configuración
set title
set relativenumber
set mouse=a
syntax on
colorscheme vim-monokai-tasty

set cursorline
set colorcolumn=120

" Indent
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=2
set tabstop=2
