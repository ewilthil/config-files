" Plugins
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'nanotech/jellybeans.vim'
Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'hukl/Smyck-Color-Scheme'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-surround'
call plug#end()

" Colors and layout
color gruvbox
set background=light
set number
set expandtab
set shiftwidth=4
set softtabstop=4

" LatexBox Stuff
let g:LatexBox_latexmk_options = "-pdflatex='pdflatex --shell-escape'"
let g:LatexBox_viewer = "open -a Skim"
let g:LatexBox_Folding = 1
