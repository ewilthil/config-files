call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'nanotech/jellybeans.vim'
Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'hukl/Smyck-Color-Scheme'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
call plug#end()
color gruvbox
set background=light
let g:LatexBox_latexmk_options = "-pdflatex='pdflatex --shell-escape'"
let g:LatexBox_viewer = "open -a Skim"
set number
set shiftwidth=4
set tabstop=4

