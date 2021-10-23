-- General
-- =========================================
lvim.format_on_save = false
lvim.leader = " "
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
lvim.builtin.bufferline.active = false

-- Builtin
-- =========================================
require("user.builtin").config()

-- Lualine settings
-- =========================================
require("user.lualine").config()

-- Theme settings
require("user.theme").tokyonight()

-- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Language Specific
-- =========================================
require("user.null_ls").config()

-- Additional Leader bindings for WhichKey
-- =========================================
require("user.keybindings").config()
