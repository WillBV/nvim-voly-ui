local Module = {}

function Module.dev_build()
    local function buildStatus (job, data, event)
        if event == "stdout" then
           print("Status")
        end
    end
    
    local output = ""

	local job = vim.fn.jobstart("npm run instantiation-scripts-gen", {
		on_stdout = function(j, d, e)
			--print(vim.inspect(d))
		--    print("instantiation scripts run")
        --    buildStatus(j, d, e)
            output = output .. vim.inspect(d)
		end,
	})
    print(output)

    -- vim.rpcrequest(job, "testMethod")


--   vim.fn.jobstart("npm run build-dev", {
--   	on_stdout = function(j, d, e)
--   		print(vim.inspect(d))
--   		print("Build Complete")
--   	end,
--   })
	--   local output = vim.fn.system("sleep 2 && ls -al /home/will/")
	--   print(output)
end

return Module
