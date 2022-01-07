nnoremap <leader>u :UndotreeShow<CR>
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <silent> <C-j> <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> K <Cmd>Lspsaga hover_doc<CR>
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
nnoremap <silent> gh <Cmd>Lspsaga lsp_finder<CR>
nnoremap <silent> ;f <cmd>Telescope find_files<cr>
nnoremap <silent> ;r <cmd>Telescope live_grep<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>
nnoremap <silent> <C-n>  :BufferLineCycleNext<CR>
nnoremap <silent> <C-p> :BufferLineCyclePrev<CR>
nnoremap <silent> <leader>w :bdelete<CR> :bnext<CR>
