local status, packer = pcall(require, 'packer')

if not status then
  print('install packer')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  use 'hoob3rt/lualine.nvim' -- Statusline

end)


