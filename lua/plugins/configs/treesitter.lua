local options = {
  ensure_installed = { "lua", "c", "cpp", "python", "java", "rust" },

  highlight = {
    enable = true,
    use_languagetree = true,
    additional_vim_regex_highlighting = true,
  },

  indent = { enable = true },
}

return options
