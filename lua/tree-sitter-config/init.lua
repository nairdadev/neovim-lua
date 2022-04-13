require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "lua", "typescript", "javascript", "html" },

  sync_install = false,

   highlight = {
       enable = true,
       additional_vim_regex_highlighting = true,
  },
  refactor = {
    highlight_definitions = {
      enable = true,
      -- Set to false if you have an `updatetime` of ~100.
      clear_on_cursor_move = true,
  },
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "grr",
      },
    },
  navigation = {
      enable = true,
      keymaps = {
        goto_definition = "gd",
        list_definitions = "gD",
        list_definitions_toc = "gO",
        goto_next_usage = "<a-*>",
        goto_previous_usage = "<a-#>",
      },
    },
  },
}
