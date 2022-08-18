  -- set vim options here (vim.<first_key>.<second_key> =  value)
  return {
    opt = {
      relativenumber = true, -- sets vim.opt.relativenumber
      expandtab = true,
      smarttab = true,
      shiftwidth = 4,
      tabstop = 4,

      hlsearch = true,
      incsearch = true,
      ignorecase = true,
      smartcase = true,

      wrap = false,
      fileencoding = 'utf-8',
      termguicolors = true,

      cursorline = true,
      colorcolumn = '101',
      hidden = true,

      mouse ="",
      softtabstop = 4,
      autoindent = true,
      smartindent = true,
      showcmd = true,
      wildmenu = true,
      wildmode="longest,list,full",
      showmatch = true,

      --autochdir=true,

      --foldmethod = "indent",
      foldlevel = 7,
      foldmethod = "expr",
      foldexpr = "nvim_treesitter#foldexpr()",


    },
    g = {
      mapleader = " ", -- sets vim.g.mapleader
    },
  }
