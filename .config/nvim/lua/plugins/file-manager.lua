return {
  "stevearc/oil.nvim",
  opts = {
    view_options = {
      show_hidden = true,
    },
    use_default_keymaps = true,
    keymaps = {
      ["<C-c>"] = { "actions.close", mode = "n" },
      ["<CR>"] = "actions.select",
      ["-"] = { "actions.parent", mode = "n" },
    },
  },
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },

}
