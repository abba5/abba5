-- This file can be loaded by calling `lua require('plugins')` from your
-- init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} } }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

    use('gruvbox-community/gruvbox') use({ 'rose-pine/neovim', as =
    'rose-pine', config = function() vim.cmd('colorscheme rose-pine') end })
    use ('navarasu/onedark.nvim')

    use('tpope/vim-fugitive')

    use('neoclide/coc.nvim', {branch = 'master'}) 
    use('fatih/vim-go', {run =':GoUpdateBinaries', branch = 'master'})

    use('github/copilot.vim')

    use('rust-lang/rust.vim')

end)

