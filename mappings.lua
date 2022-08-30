return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },
    -- Text formatting related
    ["<F2>"] = {"<cmd>set spell <cr>", desc = "Set spell" },
    ["<F3>"] = {"<cmd>set nospell <cr>", desc = "No spell"},
   -- ["<F4>"] = {"<cmd>noh <cr>", desc = "No highlight"},
    ["<Tab>"]  = {"%", desc = "Matching pair"},
    ["<leader>\""] = {"viW<esc>a\"<esc>gvo<esc>i\"<esc>gvo<esc>3l", desc = "Quote under cursor"},
    ["<leader>\'"] = {"viW<esc>a\'<esc>gvo<esc>i\'<esc>gvo<esc>3l", desc = "Quote under cursor"},
    -- Disable and remap
    ["<leader>d"] = false, -- disable going to Dashboard 'd' 
    ["<leader>a"] = { "<cmd>Alpha<cr>", desc = "Alpha Dashboard" }, --  instead of 'd'
    -- DAP
    ["<F5>"] = {"<cmd>lua require'dap'.continue()<cr>", desc = "Continue"},
    ["<F6>"] = {"<cmd>lua require'dap'.step_into()<cr>", desc = "Step into"},
    ["<F7>"] = {"<cmd>lua require'dap'.step_over()<cr>", desc = "Step over"},
    ["<F8>"] = {"<cmd>lua require'dap'.step_out()<cr>", desc = "Step out" },
    ["<Leader>b"] = {"<cmd>lua require'dap'.toggle_breakpoint()<cr>", desc = "Toggle Breakpoint"},
    ["<Leader>B"] = {"<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>", desc = "Set Breakpoint w/ condition"},
    ["<Leader>lp"] = {"<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>", desc = "Set Breakpoint w/ log point"},
    ["<Leader>dr"] = {"<cmd>lua require'dap'.repl.open()<cr>", desc = " Repl open"},
    ["<Leader>dl"] = {"<cmd>lua require'dap'.run_last()<cr>", desc = "Run last"},
    ["<leader>dc"] = {function() require'dap'.run_to_cursor() end, desc = "Run to cursor"},
    ["<leader>dt"] = {function() require'dap'.terminate() end, desc = "Terminate"},
    ["<leader>dR"] = {function() require'dap'.clear_breakpoints() end, desc = "Clear Breakpoints"},
    ["<leader>de"] = {function() require'dap'.set_exception_breakpoints({"all"}) end, desc = "Set Exeption Breakpoint"},
    ["<leader>di"] = {function() require'dap'.ui.widgets.hover() end, desc = "Widget hover"},
    ["<leader>d?"] = {function() local widgets=require"dap".ui.widgets;widgets.centered_float(widgets.scopes) end, desc = "Scops"},
    ["<leader>dk"] = {"<cmd>lua require\'dap\'.up()<CR>zz)", desc = "Up"},
    ["<leader>dj"] = {"<cmd>lua require\'dap\'.down()<CR>zz)", desc = "Down"},
    ["<leader>dr"] = {"<cmd>lua require\'dap\'.repl.toggle({}, \"vsplit\")<CR><C-w>l)", desc = "Repl Toggle"},
    -- DAP UI
    ["<leader>du"] = {function() require'dapui'.toggle() end, desc = "Toggle DAP UI"},
    -- Telescope DAP
    ["<leader>fd"] = {function() require'telescope'.extensions.dap.list_breakpoints{} end, desc = "List Breakpoints"},
    --["<leader>fs"] = {function() require'telescope'.extensions.dap.frames{} end},
    --["<leader>fs"] = {function() require'telescope'.extensions.dap.commands{} end},
    --["<leader>fs"] = {function() require'telescope'.extensions.dap.configurations{} end},
    --["<leader>fs"] = {function() require'telescope'.extensions.dap.variables{} end},
    -- Make
    ["<leader>mk"] = {"<cmd>make -j`nproc` <cr>", desc = "Make -j Nproc"},
    ["<leader>md"] = {"<cmd>make -j`nproc` debug <cr>", desc = "Make -j Nproc Debug"},
    ["<leader>mc"] = {"<cmd>make clean <cr>", desc = "Make clean"},
    -- Override toggle terminal for python (python3)
    ["<leader>tp"] = { function() astronvim.toggle_term_cmd "python3" end, desc = "ToggleTerm python" },
    -- hop -easyMotion
    ["<leader>k"] = {"<cmd>lua require'hop'.hint_words()<cr>", desc="Hop hint words"},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
