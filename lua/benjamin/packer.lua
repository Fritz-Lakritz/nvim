-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- s
vim.cmd [[packadd packer.nvim]]

-- 
return require('packer').startup(function(use)
    -- Packer can manage itself
    -- nvim 
    use {'nvim-treesitter/nvim-treesitter'}
    --    use {'nvim-orgmode/orgmode', config = function()
        --        require('orgmode').setup_ts_grammar()
        --        require('orgmode').setup{}
        --    end
        --}
    use {'github/copilot.vim'}
        use {
            "nvim-neorg/neorg",
            config = function()
                require('neorg').setup {
                    run = ":Neorg sync-parsers", 
                    load = {
                        ["core.defaults"] = {}, -- Loads default behaviour
                        ["core.concealer"] = {}, -- Adds pretty icons to your documents
                        ["core.dirman"] = { -- Manages Neorg workspaces
                        config = {
                            workspaces = {
                                notes = "~/neorg",
                            },
                        },
                    },
                },
            }
        end,
        run = ":Neorg sync-parsers",
        requires = "nvim-lua/plenary.nvim",
    }
    use 'akinsho/org-bullets.nvim'
    use 'vimwiki/vimwiki'
    use 'ElPiloto/telescope-vimwiki.nvim'

    use 'christoomey/vim-tmux-navigator'
    use 'lervag/vimtex'
    use 'wbthomason/packer.nvim'
    use 'ThePrimeagen/vim-be-good'
    use("folke/zen-mode.nvim")

    -- use {'neoclide/coc.nvim', branch = 'release'}

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
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
    use {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                -- config
                config = {
                    center = {
                        {
                            icon = '',
                            icon_hl = 'group',
                            desc = 'description',
                            desc_hl = 'group',
                            key = 'shortcut key in dashboard buffer not keymap !!',
                            key_hl = 'group',
                            key_format = ' [%s]', -- `%s` will be substituted with value of `key`
                            action = '',
                        },
                    },
                    footer = {},
                }
            }
        end,
        requires = {'nvim-tree/nvim-web-devicons'}
    }
end)
