-- Globals
vim.g.mapleader = " "

-- UI
vim.opt.laststatus = 3
vim.opt.showmode = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.api.nvim_set_hl(0, "IndentLine", { link = "Comment" })
-- vim.opt.fillchars = { eob = " " }

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Window Splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
-- vim.opt.smartindent = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.mouse = "a"

-- History
vim.opt.undofile = true

-- Mappings
vim.opt.timeoutlen = 400

-- Environment
-- vim.env.PATH = vim.env.PATH .. ":" .. vim.fn.stdpath("data") .. "/mason/bin"
