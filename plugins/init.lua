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
    { "onsails/lspkind.nvim" },
}
