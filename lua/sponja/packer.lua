vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- Telescope (Fuzzy finder)
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.0",
        -- or                            , branch = "0.1.x",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    -- Treesitter (Syntax highlighter)
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
end)
