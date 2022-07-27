return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },
    ["<F2>"] = {":set spell <Enter>", desc = "Set spell" },
    ["<F3>"] = {":set nospell <Enter>", desc = "No spell"},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
