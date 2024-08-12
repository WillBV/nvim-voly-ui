local Module = {}




function Module.dev_build()
    vim.fn.jobstart("ls -al /home/will/",{
        on_stdout = function(j, d, e)
            if vim.inspect(d) then
                print(vim.inspect(d))
            end
        end,
    })
end

return Module
