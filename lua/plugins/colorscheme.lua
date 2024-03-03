return {
    "tanvirtin/monokai.nvim", version = "*",
    lazy = false,
    priority = 1000,
    opts = function(plugin)
        return {
            palette = plugin.pro
        }
    end
}
