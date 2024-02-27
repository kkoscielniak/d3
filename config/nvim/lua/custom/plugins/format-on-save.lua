return {
  'elentok/format-on-save.nvim',
  config = function()
    local formatters = require('format-on-save.formatters')
    local vim_notify = require("format-on-save.error-notifiers.vim-notify")

    require('format-on-save').setup({
      exclude_path_patterns = {
        "/node_modules/",
        ".local/share/nvim/lazy",
      },
      formatter_by_ft = {
        lua = formatters.lsp,
      },
      fallback_formatter = {
        formatters.remove_trailing_whitespace,
        formatters.remove_trailing_newlines,
        formatters.prettierd,
      },
      error_notifier = vim_notify
    })
  end,
}
