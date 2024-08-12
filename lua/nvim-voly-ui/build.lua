local Module = {}

function Module.dev_build()
	vim.fn.jobstart("ls -al")
end

return Module
