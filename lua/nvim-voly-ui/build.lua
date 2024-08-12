local Module = {}




function Module.dev_build()
 --   vim.fn.jobstart("ls -al /home/will/",{
 --       on_stdout = function(j, d, e)
 --           print(vim.inspect(d))
 --       end,
 --   })
    local output = vim.fn.system("sleep 2 && ls -al /home/will/")
    print(output)
end

return Module
