-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<C-n>", function()
  Snacks.explorer()
end, { desc = "File Explorer" })
vim.keymap.set({ "n", "t" }, "<A-h>", function()
  Snacks.terminal()
end, { desc = "Toggle Terminal" })
vim.keymap.set("n", "<leader>zw", "<cmd> HopWord <CR>", { desc = "hint all words" })
vim.keymap.set("n", "<leader>zj", "<cmd> HopLine <CR>", { desc = "hint line" })
vim.keymap.set("n", ";", ":", { desc = "CMD enter command mode" })
