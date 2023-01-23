local dap = require "dap"

dap.adapters.python = {
  type = "executable",
  command = string.format("%s/.local/share/nvim/mason/packages/debugpy/venv/bin/python", os.getenv "HOME"),
  args = { "-m", "debugpy.adapter" },
}

dap.adapters.cppdbg = {
  id = "cppdbg",
  type = "executable",
  command = string.format(
    "%s/.local/share/nvim/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7",
    os.getenv "HOME"
  ),
}
