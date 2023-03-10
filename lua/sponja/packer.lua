vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- Telescope (Fuzzy finder)
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.0",
        -- or                            , branch = "0.1.x",
        requires = { { "nvim-lua/plenary.nvim" } }
    }
    use { "nvim-telescope/telescope-ui-select.nvim" }

    -- Treesitter (Syntax highlighter)
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

    -- LSP (Language Server Protocol)
    use {
        "VonHeikemen/lsp-zero.nvim",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- Null-ls
            { "jose-elias-alvarez/null-ls.nvim" },
            { "jay-babu/mason-null-ls.nvim" },

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },

            -- Snippets
            { "L3MON4D3/LuaSnip" },
            -- Snippet Collection (Optional)
            { "rafamadriz/friendly-snippets" },
        }
    }

    -- Git management
    use "tpope/vim-fugitive"
    use "lewis6991/gitsigns.nvim"

    -- File explorer
    use {
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons",
        },
        tag = "nightly"
    }

    -- Theme
    use "tanvirtin/monokai.nvim"
    -- Fancy status line
    use "nvim-lualine/lualine.nvim"

    -- Impatient (improves loading time)
    use "lewis6991/impatient.nvim"

    -- Leap
    use "ggandor/leap.nvim"

    use "ThePrimeagen/vim-be-good"

    use "lervag/vimtex"

    use "svermeulen/vim-cutlass"
end)
