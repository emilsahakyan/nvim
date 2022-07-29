return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },
    ["<F2>"] = {":set spell <Enter>", desc = "Set spell" },
    ["<F3>"] = {":set nospell <Enter>", desc = "No spell"},
    ["<F4>"] = {":noh <Enter>", desc = "No highlight"},
    ["<Tab>"]  = {"%", desc = "Matching pair"},
    ["<leader>\""] = {"viW<esc>a\"<esc>gvo<esc>i\"<esc>gvo<esc>3l", desc = "Quote under cursor"},
    ["<leader>\'"] = {"viW<esc>a\'<esc>gvo<esc>i\'<esc>gvo<esc>3l", desc = "Quote under cursor"},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
