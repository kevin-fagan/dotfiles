require("nvim-treesitter.configs").setup({
    ensure_installed = { 
        "go", 
        "lua", 
        "javascript", 
        "bash", 
        "html", 
        "css", 
        "json", 
        "yaml", 
        "toml", 
        "terraform" 
    },
    highlight = {
      enable = true, 
      additional_vim_regex_highlighting = false, 
    },
    indent = {
      enable = true, 
    },
  })
  