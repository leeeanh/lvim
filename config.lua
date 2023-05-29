-- General
-- =========================================
lvim.format_on_save = false
lvim.leader = " "
-- lvim.colorscheme = "tokyonight"

-- Default options
-- =========================================
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.timeoutlen = 200
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 5
-- vim.opt.clipboard = ""

-- Builtin
-- =========================================
require("user.builtin").config()

-- Themes Config
-- =========================================
require("user.lualine").config()

-- Additional Plugins
-- =========================================
require("user.plugins").config()
-- require("user.theme").tokyonight()

-- Language Specific
-- =========================================
require("user.lsp").config()

-- Additional Leader bindings for WhichKey
-- =========================================
require("user.keybindings").config()
