-- File tree plugin

return {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    keys = {
        { "<leader>ft", "<cmd>Neotree toggle<cr>", desc = "[F]ile [T]ree" },
    },
    opts = {
        close_if_last_window = true,
        window = {
            width = 30,
            position = "float",
        },
        buffers = {
            follow_current_file = { enabled = true },
        },
        filesystem = {
            follow_current_file = { enabled = true },
            filtered_items = {
                hide_dotfiles = false,
                hide_gitignored = false,
                hide_by_name = {
                    "node_modules"
                },
                never_show = {
                    ".DS_Store",
                    "thumbs.db"
                },
            },

        }
    }
}
