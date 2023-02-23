local status, lspsaga = pcall(require, "lspsaga")
if (not status) then return end

lspsaga.setup({})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', '<Space>ca', '<Cmd>Lspsaga code_action<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gR', '<Cmd>Lspsaga rename<CR>', opts)
