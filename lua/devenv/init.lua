local M = {}

local default_opts = {}

function M.setup(opts)
	opts = vim.tbl_deep_extend("force", default_opts, opts or {})

	--_G.log = require("wswrite").log
	_G.log = require("nntmwrite").log
end

return M
