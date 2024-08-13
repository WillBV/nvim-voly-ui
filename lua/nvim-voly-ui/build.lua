local Module = {}

function Module.dev_build()
	vim.fn.jobstart("npm run instantiation-scripts-gen", {
        stdout_buffered = true,
		on_stdout = function(j, d, e)
			print("Instantiation Scripts Run")
		end,
	})
    print("Starting Build")
    vim.fn.jobstart("npm run build-dev", {
        stdout_buffered = true,
    	on_stdout = function(j, d, e)
    		print("Build Complete")
    	end,
    })
end

return Module
