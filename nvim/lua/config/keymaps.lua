-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Normal mode: delete para black hole, precisa de movimento
map("n", "<leader>d", '"_d', { desc = "Delete to black hole (needs motion)" })

-- Visual mode: delete seleção inteira para black hole
map("v", "<leader>d", '"_d', { desc = "Delete selection to black hole" })
