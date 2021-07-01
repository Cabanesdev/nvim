" Plugins

call plug#begin('~/.config/nvim/plugins')

Plug 'ayu-theme/ayu-vim'
Plug 'scrooloose/nerdtree'		" explorador de archivos
Plug 'itchyny/Lightline.vim' 	"Lightline  
Plug 'neoclide/coc.nvim'			" coc for autocompletion

call plug#end()

" Configuración de plugins
" NERDTree
map <F2> :NERDTreeToggle<CR> 	"F2 to open the nerdtree
" Theme
colorscheme ayu

" Configuración
set title
set number
set mouse=a
set cursorline
set colorcolumn=150
syntax on
set spelllang=en,es
set hidden
set ignorecase
set termguicolors


" Indent
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=2
set tabstop=2

