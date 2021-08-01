lvim.lang.python.formatters = {
  {
    exe = "black",
    args = {},
  },
}

lvim.lang.python.linters = {
  {
    exe = "flake8",
    args = {},
  },
}

local root_files = {
    'setup.py',
    'pyproject.toml',
    'setup.cfg',
    'requirements.txt',
    '.git',
    'BUILD.bazel',
}

local util = require 'lspconfig/util'
lvim.lang.python.lsp.setup.root_dir = function(filename)
      return util.root_pattern(unpack(root_files))(filename) or
              util.path.dirname(filename)
            end
