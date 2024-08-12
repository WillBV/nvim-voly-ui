local Module = {}




function Module.dev_build()
    vim.print("Build Start")
    vim.fn.jobstart("ls -al /home/will/",{
        on_stdout = function(j, d, e)
            -- vim.print(vim.inspect(d))
        end,
    })
end

return Module
