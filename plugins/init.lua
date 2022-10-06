-- Configure plugins
return {
  -- Disable default plugins as follows:
  -- ["goolord/alpha-nvim"] = { disable = true },

  { "nvim-lualine/lualine.nvim", config = require "user.plugins.lualine" },
  { "EdenEast/nightfox.nvim", config = require "user.plugins.nightfox" },
  --{ "ellisonleao/gruvbox.nvim", config = require "user.plugins.gruvbox" },
  { "ethanholz/nvim-lastplace", config = require "user.plugins.nvim-lastplace" },
  { "sainnhe/sonokai", config = require "user.plugins.sainnhe" },
  { "ray-x/lsp_signature.nvim", config = require "user.plugins.lsp_signature" },
  { "mfussenegger/nvim-dap", config = require "user.plugins.nvim-dap" },
  { "rcarriga/nvim-dap-ui", config = require "user.plugins.nvim-dap-ui" },
  { "theHamsta/nvim-dap-virtual-text", config = require "user.plugins.nvim-dap-virtual-text" },
  --{ "nvim-telescope/telescope-dap.nvim",
  --    config = require("user.plugins.telescope-dap"),
  --},
  { "phaazon/hop.nvim", branch = "v2", config = require "user.plugins.hop" },
  { "folke/todo-comments.nvim", config = require "user.plugins.todo-comments" },
}
