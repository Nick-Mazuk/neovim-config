require 'lightspeed'.setup {
    ignore_case = true,
    special_keys = {
        next_match_group = ';',
        prev_match_group = ':',
    },
}

vim.keymap.set("n", "r", "<Plug>Lightspeed_omni_s")
vim.keymap.set("n", "R", "<Plug>Lightspeed_S")
