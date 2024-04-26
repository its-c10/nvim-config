vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<leader>pv", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
-- In case I don't want to go into insert mode when I add a new line
vim.keymap.set(
	"n",
	"<leader>o",
	"o<Esc><Up>",
	{ desc = "Inserts newline BELOW cursor without going into insert mode and without moving cursor." }
)
vim.keymap.set(
	"n",
	"<leader>O",
	"O<Esc><Down>",
	{ desc = "Inserts newline ABOVE cursor without going into insert mode and without moving cursor." }
)
vim.keymap.set("n", "<leader>x", "<Cmd>:bd<Cr>", { desc = "Deletes the current buffer." })

-- Lets you set current buffer's directory to current working directory with ease.
vim.keymap.set("c", "%%", function()
	if vim.fn.getcmdtype() == ":" then
		return vim.fn.expand("%:h") .. "/"
	else
		return "%%"
	end
end, {
	expr = true,
	desc = "When in command mode, putting %% will return the current directory. Useful when you want to cd to current buffers directory",
})
