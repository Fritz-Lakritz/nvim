-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    -- nvim
    --
    use 'christoomey/vim-tmux-navigator'
    use 'lervag/vimtex'
    use 'wbthomason/packer.nvim'
    use 'ThePrimeagen/vim-be-good'

    use("folke/zen-mode.nvim")
 
    -- use {'neoclide/coc.nvim', branch = 'release'}

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

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

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {
                'williamboman/mason.nvim',
                run = function() pcall(vim.cmd, 'MasonUpdate') end
            },
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},


        }



    }

end)
