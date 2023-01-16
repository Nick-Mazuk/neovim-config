vim.g.mapleader = ' '
vim.keymap.set('n', 's', "<cmd>lua vim.lsp.buf.format() <cr>:w<CR>", { noremap = true, silent = true })

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Remaps ⌘S to save like all other, sensible programs
vim.keymap.set("n", "<C-s>", ":w<CR>")
