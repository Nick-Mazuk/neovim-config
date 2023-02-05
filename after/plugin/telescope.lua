local builtin = require('telescope.builtin')

-- standard telescope utilities
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- find frequently used files
local frecency_command = "<cmd>Telescope frecency<cr>"
local frecency_remap_options = {
    noremap = true, silent = true
}
vim.keymap.set('n', 'p', frecency_command, frecency_remap_options)
vim.keymap.set('n', '<leader>p', frecency_command, frecency_remap_options)

-- command palette
vim.keymap.set('n', '<C-p>', "<cmd>Telescope command_palette<cr>", { noremap = true, silent = true })

local telescope = require('telescope')
telescope.setup({
    defaults = require('telescope.themes').get_dropdown({
        layout_config = {
            prompt_position = "top",
        },
    }),
    extensions = {
        frecency = {
            show_scores = false,
            show_unindexed = true,
            default_workspace = "CWD",
            ignore_patterns = {
                "*.git/*",
                "*/tmp/*",
                "*/target/*"
            },
            disable_devicons = false,
        },
        command_palette = {
            { "File",
                { "entire selection (C-a)", ':call feedkeys("GVgg")' },
                { "save current file (C-s)", ':w' },
                { "save all files (C-A-s)", ':wa' },
                { "quit (C-q)", ':qa' },
                { "file browser (C-i)", ":lua require'telescope'.extensions.file_browser.file_browser()", 1 },
                { "search word (A-w)", ":lua require('telescope.builtin').live_grep()", 1 },
                { "git files (A-f)", ":lua require('telescope.builtin').git_files()", 1 },
                { "files (C-f)", ":lua require('telescope.builtin').find_files()", 1 },
            },
            { "Help",
                { "tips", ":help tips" },
                { "cheatsheet", ":help index" },
                { "tutorial", ":help tutor" },
                { "summary", ":help summary" },
                { "quick reference", ":help quickref" },
                { "search help(F1)", ":lua require('telescope.builtin').help_tags()", 1 },
            },
            { "Vim",
                { "reload vimrc", ":source $MYVIMRC" },
                { 'check health', ":checkhealth" },
                { "jumps (Alt-j)", ":lua require('telescope.builtin').jumplist()" },
                { "commands", ":lua require('telescope.builtin').commands()" },
                { "command history", ":lua require('telescope.builtin').command_history()" },
                { "registers (A-e)", ":lua require('telescope.builtin').registers()" },
                { "colorshceme", ":lua require('telescope.builtin').colorscheme()", 1 },
                { "vim options", ":lua require('telescope.builtin').vim_options()" },
                { "keymaps", ":lua require('telescope.builtin').keymaps()" },
                { "buffers", ":Telescope buffers" },
                { "search history (C-h)", ":lua require('telescope.builtin').search_history()" },
                { "paste mode", ':set paste!' },
                { 'cursor line', ':set cursorline!' },
                { 'cursor column', ':set cursorcolumn!' },
                { "spell checker", ':set spell!' },
                { "relative number", ':set relativenumber!' },
                { "search highlighting (F12)", ':set hlsearch!' },
            }
        }
    },
})

telescope.load_extension('frecency')
telescope.load_extension('command_palette')
