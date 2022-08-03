return function()
  require('dap').adapters.python = {
    type = 'executable';
    command = string.format("/home/%s/python/virtualenvs/debugpy/bin/python", os.getenv("USER"));
    args = { '-m', 'debugpy.adapter' };
  }
  require('dap').configurations.python = {
    {
      -- The first three options are required by nvim-dap
      type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
      request = 'launch';
      name = "Launch file";

      -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

      program = "${file}"; -- This configuration will launch the current file if used.
      pythonPath = function()
        -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
        -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
        -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
        -- Installed using the follwoing commands
          -- python -m venv /home/$USER/python/virtualenvs/debugpy
          -- /home/$USER/python/virtualenvs/debugpy/bin/python -m pip install debugpy
        local cwd = vim.fn.getcwd()
        local pythonPath = string.format("/home/%s/python/virtualenvs/debugpy/bin/python", os.getenv("USER"));
        if vim.fn.executable(pythonPath) == 1 then -- links to /usr/bin/python3
          return pythonPath
        elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
          return cwd .. '/.venv/bin/python'
        else
          return '/usr/bin/python3'
        end
      end;
    },
  }
  -- Change icons
  vim.fn.sign_define('DapBreakpoint', {text='🟥', texthl='', linehl='', numhl=''})
  vim.fn.sign_define('DapBreakpointRejected', {text='🟦', texthl='', linehl='', numhl=''})
  vim.fn.sign_define('DapStopped', {text='⭐️', texthl='', linehl='', numhl=''})
end
