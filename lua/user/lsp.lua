M = {}

M.config = function()
  local formatters = require "lvim.lsp.null-ls.formatters"

  formatters.setup {
    {
      command = "black",
      arg = { "--fast" }
    },
    { command = "isort",
      arg = { "--profile", "black" }
    },
  }

  local linters = require "lvim.lsp.null-ls.linters"
  linters.setup {
    { command = "ruff" },
  }

    -- add `pyright` to `skipped_servers` list
  vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
  -- remove `jedi_language_server` from `skipped_servers` list
  lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
    return server ~= "ruff-lsp"
  end, lvim.lsp.automatic_configuration.skipped_servers)

  local configs = require 'lspconfig.configs'
  if not configs.ruff_lsp then
    configs.ruff_lsp = {
      default_config = {
        cmd = { 'ruff-lsp' },
        filetypes = { 'python' },
        root_dir = require('lspconfig').util.find_git_ancestor,
        init_options = {
          settings = {
            args = {}
          }
        }
      }
    }
  end
  require('lspconfig').ruff_lsp.setup {
    on_attach = on_attach,
  }

end

return M
