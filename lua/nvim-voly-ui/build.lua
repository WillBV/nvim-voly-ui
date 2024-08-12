local Module = {}

function Module.dev_build()
    local output = ""
    vim.fn.jobstart("ls -al /home/will/",{
        on_stdout = function(j, d, e)
            output = output .. vim.fn.join(d)
        end,
    })
    print(vim.inspect(output))
end

return Module
