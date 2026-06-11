return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#131316',
				base01 = '#131316',
				base02 = '#8f929b',
				base03 = '#8f929b',
				base04 = '#ebeffa',
				base05 = '#f8faff',
				base06 = '#f8faff',
				base07 = '#f8faff',
				base08 = '#ff9fb8',
				base09 = '#ff9fb8',
				base0A = '#ced8ff',
				base0B = '#a5ffb4',
				base0C = '#e5eaff',
				base0D = '#ced8ff',
				base0E = '#d6dfff',
				base0F = '#d6dfff',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#8f929b',
				fg = '#f8faff',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#ced8ff',
				fg = '#131316',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#8f929b' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#e5eaff', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#d6dfff',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#ced8ff',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#ced8ff',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#e5eaff',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#a5ffb4',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#ebeffa' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#ebeffa' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#8f929b',
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
