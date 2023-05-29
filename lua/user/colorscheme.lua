local M = {}

M.config = function()
  vim.g.tokyonight_style = "night"
  vim.g.tokyonight_hide_inactive_statusline = true
  vim.g.tokyonight_italic_functions = true
  vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
  vim.g.tokyonight_dark_sidebar = false
  vim.g.tokyonight_transparent = false
end

return M
