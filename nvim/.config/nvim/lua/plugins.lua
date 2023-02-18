-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    --everforest theme
    use 'sainnhe/everforest'
    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- harpoon for project files
    use {
        'ThePrimeagen/harpoon',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- nvim-treesitter 
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    } 
    -- treesitter-context
    use 'nvim-treesitter/nvim-treesitter-context'
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use "williamboman/mason.nvim"
end)
