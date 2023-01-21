local buffer_number = -1

local function log(_, data)
    if data then
        vim.api.nvim_buf_set_lines(buffer_number, -1, -1, true, data)
    end
end

local function open_buffer()
    if buffer_number == -1 then
        vim.api.nvim_command('botright vnew')
        buffer_number = vim.api.nvim_get_current_buf()
    end
end

local function autotest(pattern, command)
    vim.api.nvim_create_autocmd("BufWritePost", {
        group = vim.api.nvim_create_augroup("autotest", { clear = true }),
        pattern = pattern,
        callback = function()
            open_buffer()
            vim.api.nvim_buf_set_lines(buffer_number, 0, -1, true, {})
            vim.fn.jobstart(command, {
                stdout_buffered = true,
                on_stdout = log,
                on_stderr = log,
            })
        end
    })
end

autotest("*.rs", { "cargo", "test" })
