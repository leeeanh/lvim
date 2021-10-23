M = {}

M.config = function()
  -- keybindings
  vim.cmd 'vmap <C-c> "+y'

  -- Comments
  -- vim.api.nvim_set_keymap("n", ",,", "<cmd>lua require('Comment').toggle()<CR>", { noremap = true, silent = true })
  -- vim.api.nvim_set_keymap("v", ",,", "<cmd>lua require('Comment').toggle()<CR>", { noremap = true, silent = true })
  lvim.builtin.comment.toggler.line = ",,"
  lvim.builtin.comment.opleader.line = ","

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

  lvim.keys.normal_mode["<S-x>"] = ":bdelete!<CR>"
  lvim.keys.normal_mode["<S-l>"] = "<Cmd>BufferLineCycleNext<CR>"
  lvim.keys.normal_mode["<S-h>"] = "<Cmd>BufferLineCyclePrev<CR>"
  lvim.keys.normal_mode["[b"] = "<Cmd>BufferLineMoveNext<CR>"
  lvim.keys.normal_mode["]b"] = "<Cmd>BufferLineMovePrev<CR>"
  lvim.builtin.which_key.mappings["c"] = { "<CMD>bdelete!<CR>", "Close Buffer" }

  lvim.builtin.which_key.mappings.b = {
    name = "Buffers",
    ["1"] = { "<Cmd>BufferLineGoToBuffer 1<CR>", "goto 1" },
    ["2"] = { "<Cmd>BufferLineGoToBuffer 2<CR>", "goto 2" },
    ["3"] = { "<Cmd>BufferLineGoToBuffer 3<CR>", "goto 3" },
    ["4"] = { "<Cmd>BufferLineGoToBuffer 4<CR>", "goto 4" },
    ["5"] = { "<Cmd>BufferLineGoToBuffer 5<CR>", "goto 5" },
    ["6"] = { "<Cmd>BufferLineGoToBuffer 6<CR>", "goto 6" },
    ["7"] = { "<Cmd>BufferLineGoToBuffer 7<CR>", "goto 7" },
    ["8"] = { "<Cmd>BufferLineGoToBuffer 8<CR>", "goto 8" },
    ["9"] = { "<Cmd>BufferLineGoToBuffer 9<CR>", "goto 9" },
    c = { "<Cmd>BufferLinePickClose<CR>", "delete buffer" },
    p = { "<Cmd>BufferLinePick<CR>", "pick buffer" },
    t = { "<Cmd>BufferLineGroupToggle docs<CR>", "toggle groups" },
    f = { "<cmd>Telescope buffers<cr>", "Find" },
    b = { "<cmd>b#<cr>", "Previous" },
  }

end

return M
