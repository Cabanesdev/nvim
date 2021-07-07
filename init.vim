" ===============================================================================================================================================
"                                                            PLUGINS INSTALLATION
" ===============================================================================================================================================

call plug#begin('~/.config/nvim/plugins')

" Theme
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

" System explorer (nerdtree)
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Icons
Plug 'ryanoasis/vim-devicons'

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

" Git integration plugin
Plug 'tpope/vim-fugitive'

" File searcher
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" IndentLine
Plug 'Yggdroot/indentLine'

" Visualmulti
Plug 'mg979/vim-visual-multi'

Plug 'nvim-treesitter/nvim-treesitter'

call plug#end()

" ===============================================================================================================================================
"                                                            PLUGINS CONFIGURATIONS
" ===============================================================================================================================================

" ===============================================================THEME===========================================================================

let g:material_theme_style = 'ocean-community'
colorscheme material

" ===============================================================NERDTREE========================================================================

map <F2> :NERDTreeToggle<CR> 	"F2 to open the nerdtree

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

" ===============================================================DEVICONS========================================================================

set encoding=UTF-8

" ===============================================================REACT CONFIGURATIONS============================================================

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
au BufNewFile,BufRead *.js setlocal filetype=javascript
au BufNewFile,BufRead *.jsx setlocal filetype=javascript.jsx

" ===============================================================PRETTIER========================================================================

command! -nargs=0 Prettier :CocCommand prettier.formatFile

" ===============================================================TELESCOPE=======================================================================

command! -nargs=0 Ff :Telescope find_files
command! -nargs=0 Fg :Telescope live_grep
command! -nargs=0 Fb :Telescope buffers
command! -nargs=0 Fh :Telescope help_tags
command! -nargs=0 FB :Telescope file_browser

" ===============================================================INDENTLINE======================================================================

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" ===============================================================TREESITTER======================================================================

lua require 'nvim-treesitter.configs'.setup { highlight = { enable = true } } 

" ===============================================================GENERAL CONFIGURATIONS==========================================================

set title
set number
set relativenumber
set mouse=a
set cursorline
set colorcolumn=150
syntax enable
syntax on
set spelllang=en,es
set hidden
set ignorecase
set termguicolors
set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=2
set tabstop=2


" ===============================================================KEYMAPS=========================================================================

inoremap <silent><expr> <c-Space> coc#refresh()
