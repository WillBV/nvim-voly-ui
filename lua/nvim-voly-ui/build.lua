local Module = {}




function Module.dev_build()
    vim.fn.jobstart("ls -al /home/will/",{
        on_stdout = function(j, d, e)
            vim.print(d)
        end,
    })
end

return Module
