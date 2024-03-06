local wezterm = require 'wezterm'

local config = wezterm.config_builder()
config.hide_tab_bar_if_only_one_tab = true

config.set_environment_variables = {
	NERD_FONT="1"
}

return config

