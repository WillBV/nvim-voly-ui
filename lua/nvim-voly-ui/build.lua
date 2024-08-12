local Module = {}

function Module.dev_build()
    vim.fn.jobstart("ls -al /home/will/",{
        on_stdout = function(j, d, e)
            print(vim.inspect(d))
            print(j,d,e)
        end,
    })
end

return Module
