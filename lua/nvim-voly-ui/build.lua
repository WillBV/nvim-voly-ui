local Module = {}

function Module.dev_build()
    print("Dev Build Start")
    os.execute("npm run instantiation-scripts-gen")
    os.execute("npm run build-dev")
    print("Dev Build End")
end

return Module
