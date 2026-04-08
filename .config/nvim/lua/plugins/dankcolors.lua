return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#1d0f13',
				base01 = '#1d0f13',
				base02 = '#a5999c',
				base03 = '#a5999c',
				base04 = '#ffeff3',
				base05 = '#fff8fa',
				base06 = '#fff8fa',
				base07 = '#fff8fa',
				base08 = '#ff9fa2',
				base09 = '#ff9fa2',
				base0A = '#ffbccc',
				base0B = '#bbffa5',
				base0C = '#ffdbe3',
				base0D = '#ffbccc',
				base0E = '#ffc8d5',
				base0F = '#ffc8d5',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#a5999c',
				fg = '#fff8fa',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#ffbccc',
				fg = '#1d0f13',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#a5999c' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ffdbe3', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#ffc8d5',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#ffbccc',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#ffbccc',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#ffdbe3',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#bbffa5',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#ffeff3' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#ffeff3' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#a5999c',
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
