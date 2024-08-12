local Module = {}

function Module.dev_build()
    vim.fn.jobstart("ls -al /home/will/")
end

return Module
