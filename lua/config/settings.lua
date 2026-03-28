-- [[ Settings ]]
-- See `:help vim.o`

-- Leader keys
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Nerd Font
vim.g.have_nerd_font = false

-- Tab settings
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Mouse mode
vim.o.mouse = 'a'

-- Mode display
vim.o.showmode = false

-- Clipboard sync
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

-- Break indent
vim.o.breakindent = true

-- Undo history
vim.o.undofile = true

-- Search settings
vim.o.ignorecase = true
vim.o.smartcase = true

-- Sign column
vim.o.signcolumn = 'yes'

-- Update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Split behavior
vim.o.splitright = true
vim.o.splitbelow = true

-- Whitespace display
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Live preview substitutions
vim.o.inccommand = 'split'

-- Cursor line
vim.o.cursorline = true

-- Scroll offset
vim.o.scrolloff = 10

-- Confirm unsaved changes
vim.o.confirm = true

-- Diagnostic config
vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
  underline = { severity = vim.diagnostic.severity.ERROR },
  virtual_text = true,
  virtual_lines = false,
  jump = { float = true },
}
