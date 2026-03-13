return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#121415',
				base01 = '#121415',
				base02 = '#878f92',
				base03 = '#878f92',
				base04 = '#dfe8ed',
				base05 = '#f8fcff',
				base06 = '#f8fcff',
				base07 = '#f8fcff',
				base08 = '#ff9fbe',
				base09 = '#ff9fbe',
				base0A = '#bce4f8',
				base0B = '#a5ffaf',
				base0C = '#def4ff',
				base0D = '#bce4f8',
				base0E = '#cceeff',
				base0F = '#cceeff',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#878f92',
				fg = '#f8fcff',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#bce4f8',
				fg = '#121415',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#878f92' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#def4ff', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#cceeff',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#bce4f8',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#bce4f8',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#def4ff',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#a5ffaf',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#dfe8ed' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#dfe8ed' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#878f92',
				italic = true
			})

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()
				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)
					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("Theme reload")
					end
				end))
			end
		end
	}
}
