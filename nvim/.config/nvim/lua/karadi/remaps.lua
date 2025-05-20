-- To Toggle NvimTree
vim.keymap.set("n", "<leader>n", vim.cmd.NvimTreeToggle)

-- To not copy the highlight pasted text
vim.keymap.set("x", "<leader>p", "\"_dP")

-- To copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

