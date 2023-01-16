local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', 'p', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

local telescope = require('telescope')
telescope.setup({
    defaults = require('telescope.themes').get_dropdown({
        layout_config = {
            prompt_position = "top",
        },
    }),
})
