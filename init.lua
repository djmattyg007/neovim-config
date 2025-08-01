-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_create_user_command("MattRedir", function(ctx)
  local output = vim.api.nvim_exec2(ctx.args, { output = true })
  local lines = vim.split(output.output, "\n", { plain = true })
  vim.cmd("new")
  vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
  vim.opt_local.modified = false
end, { nargs = "+", complete = "command" })

vim.api.nvim_create_user_command("MattLazyPluginConfig", function(ctx)
  local config = require("lazy.core.config")
  local pluginConfig = config.plugins[ctx.fargs[1]]
  vim.api.nvim_echo({ { vim.inspect(pluginConfig) } }, false, {})
end, { nargs = 1, complete = "command" })
