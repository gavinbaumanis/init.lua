local local_plugins = {
	--{
	--    "cockpit",
	--    dir = "$HOME/workspace/cockpit",
	--    config = function()
	--        require("cockpit")
	--        vim.keymap.set("n", "<leader>ct", "<cmd>CockpitTest<CR>")
	--        vim.keymap.set("n", "<leader>cr", "<cmd>CockpitRefresh<CR>")
	--    end,
	--},

	{
		"99",
		dir = "~/workspace/99",
		config = function()
			local _99 = require("99")
			local cwd = vim.uv.cwd()
			local basename = vim.fs.basename(cwd)
			_99.setup({
				logger = {
					level = _99.DEBUG,
					path = vim.fs.joinpath(vim.fn.stdpath("cache"), "nvim.99.debug"),
					print_on_error = true,
				},
				md_files = {
					"AGENT.md",
				},
			})
			vim.keymap.set("n", "<leader>9f", function()
				_99.fill_in_function()
			end)
			vim.keymap.set("n", "<leader>9i", function()
				_99.implement_fn()
			end)
			vim.keymap.set("v", "<leader>9v", function()
				_99.implement_fn()
			end)
		end,
	},
	-- {
	-- 	"the-stru",
	-- 	dir = "~/personal/the-stru",
	-- },
}

return local_plugins
