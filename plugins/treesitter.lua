return {
  -- A list of parser names, or "all"
  ensure_installed = { "lua", "python", "verilog", "make", "cmake", "regex", "cpp", "bash", "json", "perl", "yaml" },
  --auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    --disable = { "verilog" },
    disable = function(lang, bufnr)
      return lang == "verilog" and vim.api.nvim_buf_line_count(bufnr) > 10000
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    -- additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    disable = { "html", "verilog" },
    extended_mode = false,
    max_file_lines = nil,
  },
}
