-- https://github.com/tanvirtin/monokai.nvim

local monokai = require('monokai')
local palette = monokai.pro
palette.base1 = "#1b1b1b"
monokai.setup {
    palette = palette,
    custom_hlgroups = {
        Normal = {
            bg = palette.base1,
        }
    }
}
