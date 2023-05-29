M = {}

M.config = function()
  -- keybindings
  vim.cmd 'vmap <C-c> "+y'

  -- Comments
  vim.api.nvim_set_keymap("n", ",,", "<Plug>(comment_toggle_linewise_current)", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("v", ",,", "<Plug>(comment_toggle_linewise_visual)", { noremap = true, silent = true })

  -- Better n movement
  lvim.keys.normal_mode["n"] = { "'Nn'[v:searchforward]", { expr = true, noremap = true } }
  lvim.keys.normal_mode["N"] = { "'nN'[v:searchforward]", { expr = true, noremap = true } }

  lvim.keys.normal_mode["<C-,>"] = "<cmd>lua require('neogen').jump_next()<CR>"

  lvim.builtin.which_key.mappings["t"] = {
    name = "+Trouble",
    r = { "<cmd>Trouble lsp_references<cr>", "References" },
    f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
    d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
    q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
    l = { "<cmd>Trouble loclist<cr>", "LocationList" },
    w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
  }

  lvim.builtin.which_key.mappings["lo"] = { "<cmd>SymbolsOutline<cr>", "Symbol Outline" }
  lvim.builtin.which_key.mappings["sn"] = { "<cmd>TodoTelescope<cr>", "Todo" }

  lvim.builtin.which_key.mappings["lD"] = { "<cmd>lua require('neogen').generate()<cr>", "Documentations Function" }
  lvim.builtin.which_key.mappings["lc"] = {
    "<cmd>lua require('neogen').generate({ type = 'class' })<cr>",
    "Documentations Class",
  }
        lvim.builtin.which_key.mappings["n"] = {
    name = "Neogen",
    c = { "<cmd>lua require('neogen').generate({ type = 'class'})<CR>", "Class Documentation" },
    f = { "<cmd>lua require('neogen').generate({ type = 'func'})<CR>", "Function Documentation" },
    t = { "<cmd>lua require('neogen').generate({ type = 'type'})<CR>", "Type Documentation" },
    F = { "<cmd>lua require('neogen').generate({ type = 'file'})<CR>", "File Documentation" },

  }

end

return M
