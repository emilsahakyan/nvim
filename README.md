# Nvim configuration

Based on [AstroNvim](https://astronvim.github.io/).

The __Features__ section in [AstroNvim](https://astronvim.github.io/) github page provides details about the installed plugins.  

### The following custom plugins are added and configured on top of AstroNvim
#### Thems
- [nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)
- [gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim)
- [catppuccin](https://github.com/catppuccin/nvim)
- [sonokai](https://github.com/sainnhe/sonokai)

_Note: change via `colorscheme.lua`_

#### Status line
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

#### LSP
- [lsp_signature.nvim](https://github.com/ray-x/lsp_signature.nvim)

#### DEBUG
- [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [telescope-dap.nvim](https://github.com/nvim-telescope/telescope-dap.nvim)
- [nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)

#### Other
- [nvim-lastplace](https://github.com/ethanholz/nvim-lastplace)

## Installation 
1. Follow insturctions in AstroNvim [Installation and Basic Setup](https://github.com/AstroNvim/AstroNvim) page.

2. `git clone https://github.com/emilsahakyan/nvim.git ~/.config/nvim/lua/user` 
3. `nvim +PackerSync`
4. `nvim +checkhealth` - install missing/needed tools/binaries, e.g. node


__Note:__ The configurations for the default (AstroNvim) and the custome plugins are split into separate config files for easy expansion and maintenance.

#### Automatically install and configure Nvim
https://github.com/emilsahakyan/misc/tree/main/nvim
