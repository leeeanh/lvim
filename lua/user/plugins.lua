M = {}

M.config = function()
  lvim.plugins = {
    {
      "folke/tokyonight.nvim",
      config = function()
        require("user/theme").tokyonight()
        vim.cmd [[
      colorscheme tokyonight
      ]]
      end,
    },
    {
      "ray-x/lsp_signature.nvim",
      config = function()
        require("lsp_signature").on_attach()
      end,
      event = "InsertEnter",
    },
    {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup()
      end,
      event = "BufRead",
    },
    {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup()
      end,
      cmd = "Trouble",
    },
    {
      "Pocco81/AutoSave.nvim",
      config = function()
        require("user.autosave").config()
      end,
    },
    {
      "rhysd/clever-f.vim",
      event = "CursorMoved",
      config = function()
        vim.cmd [[
            let g:clever_f_across_no_line=1
          ]]
      end,
    },
    {
      "phaazon/hop.nvim",
      event = "BufRead",
      config = function()
        require("user.hop").config()
      end,
    },
    {
      "simrat39/symbols-outline.nvim",
      cmd = "SymbolsOutline",
      event = "BufRead",
    },
    {
      "lukas-reineke/indent-blankline.nvim",
      setup = function()
        require("user.indent_blankline").setup()
      end,
    },
    -- { "tzachar/compe-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-compe", event = "InsertEnter" },
    {
      "iamcco/markdown-preview.nvim",
      run = "cd app && npm install",
      ft = "markdown",
    },
    {
      "kkoomen/vim-doge",
      event = "BufRead",
      run = "cd scripts && bash install.sh",
      config = function()
        vim.g.doge_doc_standard_python = "google"
        vim.g.doge_enable_mappings = 0
      end,
    },
    {
      "dccsillag/magma-nvim",
      event = "BufRead",
      run = ":UpdateRemotePlugins",
    },
    {
      "kevinhwang91/rnvimr",
      config = function()
        require "user.rnvimr"
      end,
    },
  }
end

return M
