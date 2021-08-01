-- Neovim
-- =========================================
local disabled_built_ins = {
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "gzip",
  "zip",
  "zipPlugin",
  "tar",
  "tarPlugin", -- 'man',
  "getscript",
  "getscriptPlugin",
  "vimball",
  "vimballPlugin",
  "2html_plugin",
  "logipat",
  "rrhelper",
  "spellfile_plugin",
  -- 'matchit', 'matchparen', 'shada_plugin',
}
for _, _plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. _plugin] = 1
end

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

-- Themes settings
vim.g.tokyonight_style = "night"
vim.g.tokyonight_hide_inactive_statusline = true
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.tokyonight_dark_sidebar = false
vim.g.tokyonight_transparent = false
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


-- Additional Leader bindings for WhichKey
-- =========================================
require("user.keybindings").config()
