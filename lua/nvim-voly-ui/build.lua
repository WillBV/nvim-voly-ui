local Module = {}

function Module.dev_build()
    vim.fn.jobstart(
        'ls',
        {
            -- cwd = '~/projects/voly-ui/ui-invoices/',
            -- on_exit = some_function,
            -- on_stdout = some_other_function,
            -- on_stderr = some_third_function
            on_stdout = print_stdout
        }
    )
    -- os.execute("npm run instantiation-scripts-gen")
    -- os.execute("npm run build-dev")
end

return Module
