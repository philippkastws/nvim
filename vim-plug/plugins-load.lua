pcall(function()
  require("trouble").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
end)
pcall(function()
    require("todo-comments").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
end)
pcall(function()
  require("auto-session").setup({})
end)
pcall(function()
  require("mini.cursorword").setup({})
  require("mini.diff").setup({})
  require("mini.animate").setup()
  --require("mini.trailspace").setup()
end)
