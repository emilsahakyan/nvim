-- Configure plugins
return {
  -- Disable default plugins as follows:
  -- ["goolord/alpha-nvim"] = { disable = true },
  { "nvim-lualine/lualine.nvim", config = require "user.plugins.lualine" },
  { "EdenEast/nightfox.nvim", config = require "user.plugins.nightfox" },
  { "ethanholz/nvim-lastplace", config = require "user.plugins.nvim-lastplace" },
  { "ray-x/lsp_signature.nvim", config = require "user.plugins.lsp_signature" },
  { "folke/todo-comments.nvim", config = require "user.plugins.todo-comments" },
  { "phaazon/hop.nvim", branch = "v2", config = require "user.plugins.hop" },
  { "shaunsingh/nord.nvim", config = require "user.plugins.shaunsingh" },
  -- replaced: now using Mason
  --{ "mfussenegger/nvim-dap", config = require "user.plugins.nvim-dap" },
  --{ "rcarriga/nvim-dap-ui", config = require "user.plugins.nvim-dap-ui" },
  --{ "theHamsta/nvim-dap-virtual-text", config = require "user.plugins.nvim-dap-virtual-text" },
  -- issues:
  --{ "nvim-telescope/telescope-dap.nvim", config = require("user.plugins.telescope-dap")},
  -- not used
  --{ "ellisonleao/gruvbox.nvim", config = require "user.plugins.gruvbox" },
}
