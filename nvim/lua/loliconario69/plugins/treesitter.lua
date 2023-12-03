require'nvim-treesitter.configs'.setup {
  ensure_installed = { 
    "c",
    "lua",
    "vim",
    "vimdoc",
    "query",
    "ssh_config",
    "sql",
    "python",
    "php",
    "passwd",
    "bash",
    "dockerfile",
    "git_config",
    "gitattributes",
    "gitcommit",
    "gitignore",
    "html",
    "css",
  },

  auto_install = true,


  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
