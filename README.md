# Nvim configuration

Custom Neovim configuration based on [AstroNvim](https://astronvim.github.io/).

The __Features__ section in [AstroNvim](https://astronvim.github.io/) github page provides details about the installed main plugins.  

## Installation 
1. Follow insturctions in AstroNvim [Installation and Basic Setup](https://github.com/AstroNvim/AstroNvim) page.

2. `git clone https://github.com/emilsahakyan/nvim.git ~/.config/nvim/lua/user` 
3. `nvim +PackerSync`
4. `nvim +checkhealth` - install missing/needed tools/binaries, e.g. node


__Note:__ The configurations for the default (AstroNvim) and the custome plugins are split into separate config files for easy expansion and maintenance.

#### Automatically install and configure Nvim
https://github.com/emilsahakyan/misc/tree/main/nvim

## LSP configuration for clang
In order to make the Language Server Protocol ([LSP](https://microsoft.github.io/language-server-protocol/)) work for cpp with the [clang](https://clangd.llvm.org ) create file `compile_flags.txt` with appropriate flags for the project, for example:

```
-xc++
-I.
-I./unit_tests/
-I./src/
-I/lib/path/
-W
all
-W
extra
-MD
-MP
-fPIC

```
