-- Bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=v10.16.0",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{"folke/tokyonight.nvim", tag="v3.0.1"},
	{ "nvim-lua/plenary.nvim", tag="v0.1.4" },
	{ "MunifTanjim/nui.nvim", tag="0.2.0" },
	{"nvim-neo-tree/neo-tree.nvim", tag="3.16",
	config=function()
		require("neo-tree").setup({
			default_component_configs = {
				icon = {
					enabled = false
				}
			}
		})
	end},
	{'nvim-telescope/telescope.nvim', tag = '0.1.5'},
	{'akinsho/bufferline.nvim', tag = 'v4.5.0'},
	{'nvim-lualine/lualine.nvim', commit = '7d131a8d3ba5016229e8a1d08bf8782acea98852'}
})

vim.opt.termguicolors = true
vim.cmd[[colorscheme tokyonight-night]]

require("bufferline").setup({
	options={
		show_buffer_icons=false,
		show_buffer_close_icons = false,
	}
})

require('lualine').setup({
	options = {
		icons_enabled = false,
		section_separators = '', component_separators = ''
	}
})
