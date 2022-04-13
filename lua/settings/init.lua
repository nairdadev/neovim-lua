local set = vim.opt       -- Setea variable para no escribir vim.opt por línea

vim.notify = require("notify")

set.expandtab     = true      -- Convierte tabs en espacios
set.smarttab      = true
set.shiftwidth    = 4
set.tabstop       = 4

set.hlsearch      = true
set.incsearch     = true
set.ignorecase    = true
set.smartcase     = true

set.splitbelow    = true
set.splitright    = true
set.wrap          = false
set.scrolloff     = 5
set.fileencoding = 'utf-8'
set.termguicolors = true

set.number        = true
set.cursorline    = true

set.hidden        = true

