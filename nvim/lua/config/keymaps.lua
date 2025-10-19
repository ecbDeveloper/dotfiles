-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>d", '"_d', { desc = "Delete to black hole (needs motion)" })

map("v", "<leader>d", '"_d', { desc = "Delete selection to black hole" })

map({ "n", "i", "v" }, "<Up>", function()
  print("Use k!")
end, opts)
map({ "n", "i", "v" }, "<Down>", function()
  print("Use j!")
end, opts)
map({ "n", "i", "v" }, "<Left>", function()
  print("Use h!")
end, opts)
map({ "n", "i", "v" }, "<Right>", function()
  print("Use l!")
end, opts)

map("i", "jj", "<Esc>", { noremap = false })
map("i", "jk", "<Esc>", { noremap = false })

map("n", "B", "0", { noremap = false })
map("n", "E", "$", { noremap = false })
