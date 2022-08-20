return function(config)
  local null_ls = require "null-ls"
  -- Check supported formatters and linters
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
  -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
  config.sources = {
    -- Set a formatter
    --null_ls.builtins.formatting.rufo,
    null_ls.builtins.formatting.prettier, -- JS, JSON YAML etc
    null_ls.builtins.formatting.stylua, -- lua
    null_ls.builtins.formatting.yapf, -- python
    --null_ls.builtins.formatting.clang_format,
    --null_ls.builtins.formatting.verible_verilog_format,

    -- Set a linter
    --null_ls.builtins.diagnostics.rubocop,
    --null_ls.builtins.diagnostics.verible,
    null_ls.builtins.diagnostics.pylint, -- python
  }
  -- set up null-ls's on_attach function
  --config.on_attach = function(client)
  --  -- NOTE: You can remove this on attach function to disable format on save
  --  if client.resolved_capabilities.document_formatting then
  --    vim.api.nvim_create_autocmd("BufWritePre", {
  --      desc = "Auto format before save",
  --      pattern = "<buffer>",
  --      callback = vim.lsp.buf.formatting_sync,
  --    })
  --  end
  --end
  return config -- return final config table
end
