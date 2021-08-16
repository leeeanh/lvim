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
      "nvim-telescope/telescope-media-files.nvim",
      event = "BufWinEnter",
      setup = function()
        vim.cmd [[packadd telescope.nvim]]
      end,
    },
    {
      "Pocco81/AutoSave.nvim",
      config = function()
        require("user.autosave").config()
      end,
    },
    {
      "nacro90/numb.nvim",
      event = "BufRead",
      config = function()
        require("numb").setup {
          show_numbers = true, -- Enable 'number' for the window while peeking
          show_cursorline = true, -- Enable 'cursorline' for the window while peeking
        }
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
    -- {
    --   "norcalli/nvim-colorizer.lua",
    --   event = "BufRead",
    --   config = function()
    --     require("colorizer").setup({ "*" }, {
    --       RGB = true, -- #RGB hex codes
    --       RRGGBB = true, -- #RRGGBB hex codes
    --       RRGGBBAA = true, -- #RRGGBBAA hex codes
    --       rgb_fn = true, -- CSS rgb() and rgba() functions
    --       hsl_fn = true, -- CSS hsl() and hsla() functions
    --       css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
    --       css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
    --     })
    --   end,
    -- },
    {
      "simrat39/symbols-outline.nvim",
      cmd = "SymbolsOutline",
      -- event = "BufRead",
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
        vim.cmd "let g:doge_doc_standard_python='google'"
        vim.cmd "let g:doge_enable_mappings=0"
      end,
    },
  }
end

return M
