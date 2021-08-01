local M = {}

M.config = function ()
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
end

return M
