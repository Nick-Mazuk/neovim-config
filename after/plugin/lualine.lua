local sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff' },
    lualine_c = {},
    lualine_x = { 'filetype' },
    lualine_y = { 'filesize', 'location' },
    lualine_z = {}
}

require('lualine').setup({
    sections = sections,
    inactive_sections = sections,
    extensions = { 'nvim-tree' },
})
