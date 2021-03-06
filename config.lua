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

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- Builtin
-- =========================================
lvim.builtin.cmp.documentation.border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.matchup.enable = true
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.context_commentstring.enable = true
lvim.builtin.treesitter.indent = { enable = false }
-- lvim.builtin.lualine.sections.lualine_b = { "branch" }
-- lvim.builtin.compe.source.tabnine = { kind = " ", priority = 200, max_reslts = 6 }
-- lvim.builtin.compe.source.orgmode = true
lvim.builtin.dashboard.active = true
lvim.builtin.dap.active = false
lvim.builtin.telescope.defaults.path_display = { shorten = 10 }
lvim.builtin.terminal.active = true
lvim.builtin.terminal.execs = {
  { "lazygit", "gg", "LazyGit" },
}

-- Themes Config
-- =========================================
require("user.lualine").config()

-- Additional Plugins
-- =========================================
require("user.plugins").config()
require("user.theme").tokyonight()

-- Language Specific
-- =========================================
-- lvim.lang.markdown = {}
-- lvim.builtin.lspinstall.on_config_done = function()
--   lvim.lang.tailwindcss.lsp.setup.filetypes = { "markdown" }
--   lvim.lang.tailwindcss.lsp.active = true
--   require("lsp").setup "tailwindcss"
-- end
-- lvim.lsp.diagnostics.virtual_text = true
-- lvim.lsp.override = { "rust", "java" }
-- require("user.json_schemas").setup()
-- require("user.lsp").config()

-- Additional Leader bindings for WhichKey
-- =========================================
require("user.keybindings").config()
