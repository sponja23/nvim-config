-- Remapping d to x (to allow cutting text after cutlass changes)
vim.keymap.set("n", "x", "d")
vim.keymap.set("x", "x", "d")
vim.keymap.set("n", "xx", "dd")
vim.keymap.set("n", "X", "D")

