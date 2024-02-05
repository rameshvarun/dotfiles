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
	{"folke/tokyonight.nvim"},
	{"catppuccin/nvim"},
	{ "nvim-lua/plenary.nvim" },
	{ "MunifTanjim/nui.nvim"},
	{"nvim-neo-tree/neo-tree.nvim", branch = "v3.x",
	config=function()
		require("neo-tree").setup({
			default_component_configs = {
				icon = {
					enabled = false
				},
				git_status = {
					symbols = false
				}
			}
		})
	end},
	{'nvim-telescope/telescope.nvim', tag = '0.1.5'},
	{'akinsho/bufferline.nvim'},
	{'nvim-lualine/lualine.nvim'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'}
})

vim.opt.number = true
vim.opt.ignorecase = true
vim.cmd[[set clipboard^=unnamed,unnamedplus]]

vim.api.nvim_create_user_command('FZF', require('telescope.builtin').find_files, {})
vim.api.nvim_create_user_command('FZG', require('telescope.builtin').git_files, {})
vim.api.nvim_create_user_command('Rg', require('telescope.builtin').live_grep, {})

vim.api.nvim_create_user_command('Tree', "Neotree toggle", {})

vim.opt.termguicolors = true
vim.cmd[[colorscheme catppuccin-mocha]]

require("bufferline").setup({
	options={
		show_buffer_icons=false,
		buffer_close_icon='×',
	}
})

require('lualine').setup({
	options = {
		icons_enabled = false,
		section_separators = '', component_separators = ''
	}
})

require'cmp'.setup {
  sources = {
    { name = 'nvim_lsp' }
  }
}

require'lspconfig'.pyright.setup{}
