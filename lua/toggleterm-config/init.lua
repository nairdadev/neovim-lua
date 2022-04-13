require("toggleterm").setup{
    open_mapping = [[<c-t>]],
    shade_terminals = true,
    direction = 'float',
    close_on_exit = true,
    	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
}
