set termguicolors

set background=dark
set completeopt=menuone,noselect
set guifont="Hack Nerd Font"
set relativenumber
set nu
set exrc
set nohlsearch
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set noshowmode
set updatetime=100
set shortmess+=c
set cmdheight=2
set clipboard+=unnamedplus
set splitbelow
set splitright
set noequalalways

syntax on
filetype plugin on
filetype indent on

let mapleader = " "
hi Normal guibg=NONE ctermbg=NONE

lua << EOF
local signs = {
    Error = " ",
    Warning = " ",
    Hint = " ",
    Information = " "
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end
EOF
