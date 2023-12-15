-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- s
vim.cmd [[packadd packer.nvim]]

-- 
return require('packer').startup(function(use)
    -- Packer can manage itself
    -- nvim 
    --
    use {'ArbitRandomUser/latexrenderer'}
    use {'github/copilot.vim'}
    use 'vimwiki/vimwiki'
    use 'ElPiloto/telescope-vimwiki.nvim'

    use 'christoomey/vim-tmux-navigator'
    use 'lervag/vimtex'
    use 'wbthomason/packer.nvim'
    use 'ThePrimeagen/vim-be-good'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- colorschemes
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use({
        "rebelot/kanagawa.nvim",
        as = 'kanagawa',
        config = function()
            vim.cmd("colorscheme kanagawa")
        end
    })

    use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim", as = "darcula-solid"}

    use {'AlexvZyl/nordic.nvim', as = "nordic"}
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "ray-x/aurora", as = "aurora" }
    use { "ellisonleao/gruvbox.nvim", as = "gruvbox" }
    use {'rmehri01/onenord.nvim', as = "onenord"}
    use {'NTBBloodbath/doom-one.nvim', as = "doom-one"}
    use {'ramojus/mellifluous.nvim', as = "mellifluous"}
    use {"rafamadriz/neon", as = "neon"}
    use {"folke/tokyonight.nvim", as = "tokyonight"}
    --colorschemes end

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    -- completion
    use ("williamboman/mason.nvim")
    use ("williamboman/mason-lspconfig.nvim")
    use ("neovim/nvim-lspconfig")
    -- cmp
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-path')
    use('hrsh7th/cmp-nvim-lua')

    -- flutter
    use {
        'akinsho/flutter-tools.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
    }

    -- LuaSnip
    use({
        "L3MON4D3/LuaSnip",
        tag = "v2.*",
        build = "make install_jsregexp"
    })
    use('saadparwaiz1/cmp_luasnip')
    use "sar/friendly-snippets.nvim"
end)
