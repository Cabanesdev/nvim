" Plugins

call plug#begin('~/.config/nvim/plugins')

" Theme
Plug 'ayu-theme/ayu-vim'

" System explorer (nerdtree)
Plug 'scrooloose/nerdtree'

" LightLine
Plug 'itchyny/Lightline.vim'

" coc for tslinting, auto complete and prettier
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" coc extensions
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']

" by default, if you open tsx file, neovim does not show syntax colors
" vim-tsx will do all the coloring for jsx in the .tsx file
Plug 'ianks/vim-tsx'

" by default, if you open tsx file, neovim does not show syntax colors
" typescript-vim will do all the coloring for typescript keywords
Plug 'leafgarland/typescript-vim'

call plug#end()

" Theme
colorscheme ayu

" NERDTree
map <F2> :NERDTreeToggle<CR> 	"F2 to open the nerdtree

" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
au BufNewFile,BufRead *.js setlocal filetype=javascript
au BufNewFile,BufRead *.jsx setlocal filetype=javascript.jsx

" config 
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

" Indent confing
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=2
set tabstop=2

