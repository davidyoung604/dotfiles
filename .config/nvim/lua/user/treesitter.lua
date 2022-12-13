local configs = require("nvim-treesitter.configs")

configs.setup {
--  ensure_installed = "all", -- NOTE: setting "all" will add ~260ms to startup time
  sync_install = false,
  auto_install = true, -- NOTE: requires tree-sitter CLI: https://github.com/tree-sitter/tree-sitter
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
    disable = { "yaml" }
  },
  rainbow = {
    enable = true,
    -- disable = { 'jsx', 'cpp' }, -- list of languages to disable
    extended_mode = true, -- also highlight non-bracket delimeters like html tags
    max_file_lines = nil, -- do not enable for files with more than n lines
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
	playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    }
  }
}
