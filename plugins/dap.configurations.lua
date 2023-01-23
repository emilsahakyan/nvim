local dap = require "dap"

dap.configurations.python = {
    {
        -- The first three options are required by nvim-dap
        type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
        request = "launch",
        name = "Launch file",

        -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

        program = "${file}", -- This configuration will launch the current file if used.
        args = function()
            local args_string = vim.fn.input "Arguments: "
            return vim.split(args_string, " +")
        end,
        pythonPath = function()
            -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
            -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
            -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
            -- Can be installed using the follwoing commands
            -- python -m venv $HOME/python/virtualenvs/debugpy
            -- $HOME/python/virtualenvs/debugpy/bin/python -m pip install debugpy
            -- or via LSP DAP tools
            local cwd = vim.fn.getcwd()
            local pythonPath = string.format("%s/.local/share/nvim/mason/packages/debugpy/venv/bin/python",
                os.getenv "HOME")
            if vim.fn.executable(pythonPath) == 1 then -- links to /usr/bin/python3
                return pythonPath
            elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
                return cwd .. "/.venv/bin/python"
            else
                return "/usr/bin/python3"
            end
        end,
    },
}

dap.configurations.cpp = {
    {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        program = function() return vim.fn.input("My Path to executable: ", vim.fn.getcwd() .. "/", "file") end,
        cwd = "${workspaceFolder}",
        stopOnEntry = true,
        args = function()
            local args_string = vim.fn.input "Arguments: "
            return vim.split(args_string, " +")
        end,
        setupCommands = {
            {
                text = "-enable-pretty-printing",
                description = "enable pretty printing",
                ignoreFailures = false,
            },
        },
    },
}
