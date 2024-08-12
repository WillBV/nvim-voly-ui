local Module = {}




function Module.dev_build()
    vim.fn.jobstart("npm run instantiation-scripts-gen",{
        on_stdout = function(j, d, e)
            print("Instantiation Scripts Run")
        end,
    })
 --   local output = vim.fn.system("sleep 2 && ls -al /home/will/")
 --   print(output)
end

return Module
