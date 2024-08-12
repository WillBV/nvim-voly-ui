local Module = {}

function Module.dev_build()
    vim.fn.jobstart(
        'ls -al',
        {
            -- cwd = '~/projects/voly-ui/ui-invoices/',
            -- on_exit = some_function,
            -- on_stdout = some_other_function,
            -- on_stderr = some_third_function
            on_stdout = function (id, data)
                vim.print(id)
                vim.print(data)
            end
        }
    )
    -- os.execute("npm run instantiation-scripts-gen")
    -- os.execute("npm run build-dev")
end

return Module
