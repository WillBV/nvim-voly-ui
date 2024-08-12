local Module = {}

function Module.dev_build()
    vim.fn.jobstart('ls', { on_stdout = print_stdout })
end

return Module
