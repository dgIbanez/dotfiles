local opt = vim.opt -- for conciseness

-- line numbers
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = true

-- search settings
opt.ignorecase = true 
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.background = "dark" 
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = false
opt.splitbelow = true

-- take the hyphen character into consideration as part of a word
opt.iskeyword:append("-")



