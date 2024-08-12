local Module = {}

function Module.dev_build()
    vim.fn.jobstart('ls', { on_stdout = function(id, data, name)
            vim.print("id")
            vim.print(id)
            vim.print("data")
            vim.print(data)
            vim.print("name")
            vim.print(name)
        end
    })
end

return Module
