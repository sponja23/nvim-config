-- Formatting config
return {
    'stevearc/conform.nvim',
    opts = {
        notify_on_error = true,
        formatters_by_ft = {
            lua = { 'stylua' },
            python = { 'ruff' },
            -- python = { "isort", "black" },
            -- javascript = { { "prettierd", "prettier" } },
        },
    },
}

