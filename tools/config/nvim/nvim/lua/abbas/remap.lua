vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- filename copy
vim.keymap.set("n", "<leader>xr", ":let @+ = expand(\"%\")<CR>")
vim.keymap.set("n", "<leader>xf", ":let @+ = expand(\"%:p\")<CR>")
vim.keymap.set("n", "<leader>xn", ":let @+ = expand(\"%:t\")<CR>")

-- comment
vim.keymap.set("v", "<leader>/", ":norm i")
vim.keymap.set("v", "<leader>//", ":norm x<CR>")

