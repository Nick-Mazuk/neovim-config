vim.g.mapleader = ' '
vim.keymap.set('n', 's', "<cmd>lua vim.lsp.buf.format() <cr>:w<CR>", { noremap = true, silent = true })

-- Moves lines up and down in visual mode.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move up and down the page half way, keeping the cursor in the middle of the
-- screen.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Paste while preserving your copy buffer.
vim.keymap.set("x", "<leader>p", [["_dP]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Remaps ⌘S to save like all other, sensible programs
vim.keymap.set("n", "<C-s>", ":w<CR>")
