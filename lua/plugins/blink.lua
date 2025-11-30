return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.completion = opts.completion or {}
    opts.completion.list = opts.completion.list or {}
    opts.completion.list.selection = {
      preselect = false, -- Do not preselect
      auto_insert = false, -- Do not auto insert
    }
  end
}
