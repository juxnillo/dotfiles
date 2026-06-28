return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#1d100e',
				base01 = '#1d100e',
				base02 = '#a59a99',
				base03 = '#a59a99',
				base04 = '#fff1ef',
				base05 = '#fff9f8',
				base06 = '#fff9f8',
				base07 = '#fff9f8',
				base08 = '#ffa09f',
				base09 = '#ffa09f',
				base0A = '#ffbfb7',
				base0B = '#b8ffa5',
				base0C = '#ffddd9',
				base0D = '#ffbfb7',
				base0E = '#ffcac4',
				base0F = '#ffcac4',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#a59a99',
				fg = '#fff9f8',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#ffbfb7',
				fg = '#1d100e',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#a59a99' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ffddd9', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#ffcac4',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#ffbfb7',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#ffbfb7',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#ffddd9',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#b8ffa5',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#fff1ef' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#fff1ef' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#a59a99',
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
