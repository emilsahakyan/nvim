require("mason-null-ls").setup {
  ensure_installed = { "prettier", "stylua", "pylint", "yapf" },
  automatic_installation = true,
}
