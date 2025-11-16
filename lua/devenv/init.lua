local M = {}

local default_opts = { enable_wswrite_log = true }

function M.setup(opts)
	opts = vim.tbl_deep_extend("force", default_opts, opts or {})

	if opts.enable_wswrite_log == nil or opts.enable_wswrite_log then
		-- If wswrite is enabled, then we use it to log.
		_G.log = require("wswrite").log
		--_G.log = require("nntmwrite").log
	else
		-- If wswrite is not enabled, then we use the default log.
		-- just use print
		_G.log = function(...)
			-- Do nothing... prints will interrupt the flow of the program
			--print(...)
		end
	end
end

return M
