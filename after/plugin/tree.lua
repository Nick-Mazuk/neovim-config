-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- setup options: https://github.com/nvim-tree/nvim-tree.lua/blob/3ce0a8e770f70a135ef969e0a640bd8d05baf42c/doc/nvim-tree-lua.txt#L173
require("nvim-tree").setup({
    open_on_setup = true,
    view = {
        hide_root_folder = true,
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    renderer = {
        icons = {
            show = {
                git = false,
            },
        }
    }
})

vim.keymap.set("n", "<C-d>", ":NvimTreeFocus<CR>", {noremap = true, silent = true})
