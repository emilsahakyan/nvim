-- Configure plugins
return {
    -- Disable default plugins as follows:
    -- ["goolord/alpha-nvim"] = { disable = true },

    -- You can also add new plugins here as well:
    -- { "andweeb/presence.nvim" },
    -- {
        --   "ray-x/lsp_signature.nvim",
        --   event = "BufRead",
        --   config = function()
            --     require("lsp_signature").setup()
            --   end,
            -- },
    { "nvim-lualine/lualine.nvim",
        config = require("user.plugins.lualine"),
    },
    { "EdenEast/nightfox.nvim",
        config = require("user.plugins.nightfox"),
    },
    { "ellisonleao/gruvbox.nvim" ,
        config = require("user.plugins.gruvbox"),
    },
    { "ethanholz/nvim-lastplace" ,
        config = require("user.plugins.nvim-lastplace"),
    },
    { "catppuccin/nvim", as = "catppuccin" ,
        config = require("user.plugins.catppuccin"),
    },
    { "sainnhe/sonokai" ,
        config = require("user.plugins.sainnhe"),
    },
    { "ray-x/lsp_signature.nvim" ,
        config = require("user.plugins.lsp_signature"),
    },
    { "mfussenegger/nvim-dap" ,
        config = require("user.plugins.nvim-dap"),
    },
    { "rcarriga/nvim-dap-ui",
        config = require("user.plugins.nvim-dap-ui"),
    },
    { "nvim-telescope/telescope-dap.nvim",
        config = require("user.plugins.telescope-dap"),
    },
    { "theHamsta/nvim-dap-virtual-text",
        config = require("user.plugins.nvim-dap-virtual-text"),
    },
    { "onsails/lspkind.nvim" },
}
