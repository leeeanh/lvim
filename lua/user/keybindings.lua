M = {}

M.config = function()
  -- keybindings
  vim.cmd 'vmap <C-c> "+y'

  -- Comments
  vim.api.nvim_set_keymap("n", ",,", ":CommentToggle<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("v", ",,", ":CommentToggle<CR>", { noremap = true, silent = true })

  -- Better n movement
  lvim.keys.normal_mode["n"] = { "'Nn'[v:searchforward]", { expr = true, noremap = true } }
  lvim.keys.normal_mode["N"] = { "'nN'[v:searchforward]", { expr = true, noremap = true } }

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

  lvim.builtin.which_key.mappings["lD"] = { "<cmd>DogeGenerate<cr>", "Documentations Generate" }

  lvim.builtin.which_key.mappings["r"] = {
    name = "+Magma Run",
    r = {"<cmd>MagmaEvaluateLine<cr>", "Evaluate the current line"},
    i = {"<cmd>MagmaInit<cr>", "Init the Jupiter Session"},
    c = {"<cmd>MagmaReevaluateCell<cr>", "Reevaluate the currently selected cell"}
  }
  lvim.builtin.which_key.vmappings["r"] = {":<C-u>MagmaEvaluateVisual<cr>", "Evaluate the selected text"}
  -- lvim.builtin.which_key.mappings["gd"] = { "<cmd>DiffviewOpen HEAD~1<cr>", "Diff" }
  -- lvim.builtin.which_key.mappings["dU"] = { "<cmd>lua require('dapui').toggle()<cr>", "Toggle UI" }
  -- lvim.builtin.which_key.mappings["de"] = { "<cmd>lua require('dapui').eval()<cr>", "Eval" }
  -- lvim.builtin.which_key.mappings["lf"] = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format" }
  -- lvim.builtin.which_key.mappings["r"] = "Run"
  -- lvim.builtin.which_key.mappings["m"] = "Make"
  -- lvim.builtin.which_key.mappings["t"] = "Test"
  -- lvim.builtin.which_key.mappings["H"] = "Help"
  -- lvim.builtin.which_key.mappings["R"] = {
  --   name = "Replace",
  --   r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
  --   w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
  --   f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
  -- }
end

return M
