-- easily add or disable built in mappings added during LSP attaching
return {
  n = {
    -- ["<leader>lf"] = false -- disable formatting keymap
    --["<leader>lf"] = { function() vim.lsp.buf.formatting_sync(nil, 5000) end, desc = "Format code" }
  },
}
