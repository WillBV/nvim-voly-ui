local Module = {}

function Module.dev_build()
    local output = "Start: "
    vim.fn.jobstart("ls -al /home/will/",{
        on_stdout = function(j, d, e)
            output = vim.inspect(d)
        end,
    })
    vim.print(output)
end

return Module
