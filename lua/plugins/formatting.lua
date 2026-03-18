return {
  'stevearc/conform.nvim',
  opts = {
    notify_on_error = false,
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      c = { 'clang-format' },
      cpp = { 'clang-format' },
      lua = { 'stylua' },
    },
    formatters = {
      ['clang-format'] = {
        -- This forces 4 spaces even if there is no .clang-format file present
        prepend_args = { '-style={IndentWidth: 4, BasedOnStyle: Google}' },
      },
    },
  },
}
