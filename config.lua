-- General
-- =========================================
lvim.format_on_save = false
lvim.leader = "space"
lvim.colorscheme = "tokyonight"

-- Default options
-- =========================================
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.timeoutlen = 200
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 5
vim.opt.clipboard = ""

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- Galaxyline settings
lvim.builtin.galaxyline.colors = {
  alt_bg = "#1f2335",
  grey = "#a9b1d6",
  blue = "#394b70",
  cyan = "#88c0d0",
  red = "#BF616A",
  green = "#A3BE8C",
  yellow = "#E7cb93",
  orange = "#c68a75",
  purple = "#B48EAD",
  magenta = "#D16D9E",
  error_red = "#F44747",
  warning_orange = "#ff8800",
  info_yellow = "#FFCC66",
  hint_blue = "#4FC1FF",
}

-- Builtin
-- =========================================
lvim.builtin.compe.documentation.border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.matchup.enable = true
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.context_commentstring.enable = true
lvim.builtin.treesitter.indent = { enable = false }
-- lvim.builtin.compe.source.tabnine = { kind = " ", priority = 200, max_reslts = 6 }
-- lvim.builtin.compe.source.orgmode = true
lvim.builtin.dashboard.active = true
lvim.builtin.dap.active = false
lvim.builtin.galaxyline.active = true
lvim.builtin.telescope.defaults.path_display = { shorten = 10 }
lvim.builtin.terminal.active = true
lvim.builtin.terminal.execs = {
  { "lazygit", "gg", "LazyGit" },
}

-- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Language Specific
-- =========================================
lvim.lang.markdown = {}
lvim.builtin.lspinstall.on_config_done = function()
  require("user.tailwind").setup()
end
lvim.lsp.diagnostics.virtual_text = true
lvim.lsp.override = { "rust", "java" }
require("user.json_schemas").setup()
require("user.lsp").config()

-- Additional Leader bindings for WhichKey
-- =========================================
require("user.keybindings").config()
