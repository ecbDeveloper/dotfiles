-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>d", '"_d', { desc = "Delete to black hole (needs motion)" })

map("v", "<leader>d", '"_d', { desc = "Delete selection to black hole" })

map("i", "jj", "<Esc>", opts)
map("i", "jk", "<Esc>", opts)

map({ "n", "v" }, "B", "0", opts)
map({ "n", "v" }, "E", "$", opts)

map({ "n", "v", "x" }, "<leader>y", '"+y', opts)
map({ "n", "v", "x" }, "<leader>yy", '"+yy', opts)
map({ "n", "v", "x" }, "<leader>Y", '"+yy', opts)
map({ "n", "v", "x" }, "<leader>p", '"+p', opts)
