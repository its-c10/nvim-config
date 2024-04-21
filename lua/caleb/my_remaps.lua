vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- In case I don't want to go into insert mode when I add a new line
vim.keymap.set("n", "<leader>o", "o<Esc><Up>", { desc = "Inserts newline BELOW cursor without going into insert mode and without moving cursor." })
vim.keymap.set("n", "<leader>O", "O<Esc><Up>", { desc = "Inserts newline ABOVE cursor without going into insert mode and without moving cursor." })
vim.keymap.set("n", "<leader>x", "<Cmd>:bd<Cr>", { desc = "Deletes the current buffer." })
