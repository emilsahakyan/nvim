return {
      { "nvim-lualine/lualine.nvim",
      config = function()
        require('lualine').setup({
          options = {
                  theme = 'gruvbox',
                  component_separators = { left = '', right = ''},
                  section_separators = { left = '', right = ''},
                  --section_separators = { left = '', right = ''},
                  --component_separators = ''
          }
        })
      end,
    },
      --{ "onsails/lspkind.nvim" },
      { "EdenEast/nightfox.nvim",
      config = function()
        require('nightfox').setup({
          options = {
            styles = {
              comments = "italic",
              keywords = "bold",
              types = "italic,bold",
            }
          }
        })
      end,
    },
    { "ellisonleao/gruvbox.nvim" ,
    config = function()
      require("gruvbox").setup({
        undercurl = true,
        underline = true,
        bold = true,
        italic = false,
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "", -- can be "hard", "soft" or empty string
        overrides = {},
      })
    end,
  },
    { "ethanholz/nvim-lastplace" ,
    config = function()
      require("nvim-lastplace").setup({
        lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
        lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
        lastplace_open_folds = true
      })
    end,
  },
}
