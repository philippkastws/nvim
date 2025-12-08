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
  local animate = require('mini.animate')
  animate.setup({
    cursor = {
      enable = false,
    },
    scroll = {
      enable = false,
    },
    open = {
      -- Change transparency from 60 to 80 instead of default 80 to 100
      winblend = animate.gen_winblend.linear({ from = 20, to = 40 }),
    },
    close = {
      -- Change transparency from 60 to 80 instead of default 80 to 100
      winblend = animate.gen_winblend.linear({ from = 20, to = 40 }),
    },
  })
  --require("mini.trailspace").setup()
end)
