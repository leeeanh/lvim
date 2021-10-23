-- Config lsp use jedi_language_server insteed of pyright
M = {}

M.config = function()
  lvim.lang.python.lsp.provider = "jedi_language_server"
  lvim.lang.python.lsp.setup.cmd = { "jedi-language-server" }
end

return M
