-- set vim options here (vim.<first_key>.<second_key> =  value)
return {
  opt = {
    relativenumber = true, -- sets vim.opt.relativenumber
    expandtab = true,
    smarttab = true,
    shiftwidth = 4,
    tabstop = 4,
    showtabline = 2, -- always display tabline

    hlsearch = true,
    incsearch = true,
    ignorecase = true,
    smartcase = true,

    wrap = false,
    fileencoding = "utf-8",
    termguicolors = true,

    cursorline = true,
    colorcolumn = "101",
    hidden = true,
    --scrolloff = 8, -- Number of lines to keep above and below the cursor
    --sidescrolloff = 8, -- Number of columns to keep at the sides of the cursor

    mouse = "",
    softtabstop = 4,
    autoindent = true,
    smartindent = true,
    showcmd = false,
    cmdheight = 1, -- hide command line unless needed
    wildmenu = true,
    wildmode = "longest,list,full",
    showmatch = true,
    --showmode = false, -- Disable showing modes in command line
    --pumheight = 10, -- Height of the pop up menu

    --autochdir = true,
    --guicursor="n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50",

    --foldmethod = "indent",
    foldlevel = 10,
    foldmethod = "expr",
    foldexpr = "nvim_treesitter#foldexpr()",
  },

  g = {
    mapleader = " ", -- sets vim.g.mapleader
  },
}
