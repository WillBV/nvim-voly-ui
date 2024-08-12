local Module = {}

function Module.dev_build()
    vim.print("Build Start")
    vim.fn.jobstart("echo $(ls -al /home/will/)",{
        on_stdout = function(j, d, e)
            vim.print("on_stdout")
            print(vim.inspect(d))
        end,
    })
end

return Module
