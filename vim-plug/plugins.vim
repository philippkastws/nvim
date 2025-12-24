" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  Plug 'tpope/vim-fugitive'
  " Better comments
  Plug 'tpope/vim-commentary'

  Plug 'easymotion/vim-easymotion'

  " Smooth scroll
  Plug 'psliwka/vim-smoothie'

  " if !exists('g:vscode')
  Plug 'ryanoasis/vim-devicons'
  Plug 'vim-airline/vim-airline'
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Git
  "Plug 'airblade/vim-gitgutter'
  Plug 'lewis6991/gitsigns.nvim'
  " Plug 'romgrk/barbar.nvim'
  Plug 'tpope/vim-rhubarb'
  " Terminal
  Plug 'voldikss/vim-floaterm'
  " Start Screen
  Plug 'mhinz/vim-startify'
  " See what keys do like in emacs
  " Plug 'liuchengxu/vim-which-key'

  Plug 'vim-airline/vim-airline-themes'
  Plug 'francoiscabrol/ranger.vim'
  Plug 'rbgrouleff/bclose.vim'

  Plug 'lifepillar/vim-cheat40'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'

  Plug 'preservim/nerdtree'

"  Plug 'kamykn/spelunker.vim'

  Plug 'will133/vim-dirdiff'

  Plug 'pechorin/any-jump.vim'

  "Plug 'jdhao/better-escape.vim'
  Plug 'max397574/better-escape.nvim'


  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  " Plug 'nvim-treesitter/nvim-treesitter-textobjects'
  "Plug 'yioneko/nvim-yati', { 'tag': '*' }

  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': 'v0.2.0' }

"  Plug 'rmagatti/auto-session'
"  Plug 'rmagatti/session-lens'

  Plug 'jreybert/vimagit'

  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

  " Themes
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
  Plug 'joshdick/onedark.vim'
  Plug 'rebelot/kanagawa.nvim'

  Plug 'sudormrfbin/cheatsheet.nvim'

  "Plug 'echasnovski/mini.icons'
  Plug 'nvim-mini/mini.nvim', { 'branch': 'stable' }
  Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
  " Plug 'ryanoasis/vim-devicons' Icons without colours
  "Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
  Plug 'akinsho/bufferline.nvim', { 'branch': 'main' }
  Plug 'tiagovla/scope.nvim'

  " Completion
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'

  " LSP Support
  Plug 'neovim/nvim-lspconfig'             " Required
  Plug 'williamboman/mason.nvim'           " Optional
  Plug 'williamboman/mason-lspconfig.nvim' " Optional

  "  Snippets
  " Plug 'L3MON4D3/LuaSnip'             " Required
  "Plug 'rafamadriz/friendly-snippets' " Optional

  " Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v1.x'}

  Plug 'phaazon/hop.nvim'

  " Plug 'mfussenegger/nvim-treehopper'

  Plug 'nvim-tree/nvim-tree.lua'

  Plug 'justinmk/vim-sneak'

  Plug 'RRethy/vim-illuminate'

  Plug 'sindrets/diffview.nvim'

  Plug 'kdheepak/lazygit.nvim'

  Plug 'kkharji/sqlite.lua'
  Plug 'AckslD/nvim-neoclip.lua'

  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-sensible'

  Plug 'kevinhwang91/nvim-bqf'

  Plug 'lukas-reineke/indent-blankline.nvim'

  " Find helper, but is slow on some files
  " Plug 'folke/flash.nvim'

  Plug 'windwp/nvim-autopairs'

  Plug 'tpope/vim-sleuth'

  Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

  Plug 'projekt0n/github-nvim-theme'

  Plug 'EdenEast/nightfox.nvim'

  Plug 'rose-pine/neovim'

  Plug 'folke/twilight.nvim'

  Plug 'gbprod/yanky.nvim'

  Plug 'folke/zen-mode.nvim'

  Plug 'kevinhwang91/nvim-hlslens'
  Plug 'petertriho/nvim-scrollbar'

  Plug 'chentoast/marks.nvim'

  " Run on console
  " tabby serve --device metal --model StarCoder-1B
  " Including chat
  " tabby serve --device metal --model StarCoder-1B --chat-model WizardCoder-3B
  " tabby serve --device metal --model StarCoder2-3B --chat-model WizardCoder-3B
  " nvim /Users/kast/.tabby-client/agent/config.toml and add the user token
  " you define in the local http server
  " Plug 'TabbyML/vim-tabby'

  Plug 'github/copilot.vim'

  Plug 'romgrk/doom-one.vim'

  " ollama plugin
  Plug 'David-Kunz/gen.nvim'

  Plug 'nvim-pack/nvim-spectre'

  Plug 'tiagovla/tokyodark.nvim'

  " Plug 'huggingface/llm.nvim'

  " Plug 'wellle/context.vim'
  Plug 'nvim-treesitter/nvim-treesitter-context'

  Plug 'nvim-telescope/telescope-ui-select.nvim'
  Plug 'NStefan002/screenkey.nvim', { 'tag': '*' }

  Plug 'hedyhli/outline.nvim'

  Plug 'nomnivore/ollama.nvim'

  Plug 'mbbill/undotree'

  Plug 'stevearc/oil.nvim'

  Plug 'dyng/ctrlsf.vim'

  Plug 'CopilotC-Nvim/CopilotChat.nvim', { 'branch': 'main' }

  Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install --frozen-lockfile --production',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

  Plug 'kwkarlwang/bufjump.nvim'

  " Avante
  " Deps
  " Plug 'nvim-treesitter/nvim-treesitter'
  " Plug 'nvim-lua/plenary.nvim'
  Plug 'MunifTanjim/nui.nvim'
  Plug 'MeanderingProgrammer/render-markdown.nvim'

  " Optional deps
  " Plug 'hrsh7th/nvim-cmp' " what
  " Plug 'nvim-tree/nvim-web-devicons' "or Plug 'echasnovski/mini.icons'
  Plug 'HakonHarnes/img-clip.nvim'
  Plug 'zbirenbaum/copilot.lua'
  Plug 'stevearc/dressing.nvim' " for enhanced input UI
  Plug 'folke/snacks.nvim' " for modern input UI
  Plug 'rcarriga/nvim-notify'
  Plug 'folke/noice.nvim'
  Plug 'folke/which-key.nvim'
  Plug 'folke/trouble.nvim'

  " Yay, pass source=true if you want to build from source
  " Plug 'yetone/avante.nvim', { 'branch': 'main', 'do': 'make' }

  Plug 'olimorris/codecompanion.nvim'

  Plug 'morhetz/gruvbox'
  Plug 'sainnhe/everforest'
  Plug 'robitx/gp.nvim'

  Plug 'JoosepAlviste/nvim-ts-context-commentstring'

  Plug 'vim-scripts/BufOnly.vim'

  Plug 'folke/todo-comments.nvim'

  Plug 'rmagatti/auto-session'

  " endif

call plug#end()


lua <<EOF
  pcall(function()
    require'nvim-treesitter.configs'.setup {
      --yati = {
      --  enable = true,
      --  -- Disable by languages, see `Supported languages`
      --  disable = { "python" },

      --  -- Whether to enable lazy mode (recommend to enable this if bad indent happens frequently)
      --  default_lazy = true,

      --  -- Determine the fallback method used when we cannot calculate indent by tree-sitter
      --  --   "auto": fallback to vim auto indent
      --  --   "asis": use current indent as-is
      --  --   "cindent": see `:h cindent()`
      --  -- Or a custom function return the final indent result.
      --  default_fallback = "auto"
      --},
      --indent = {
      --  enable = false -- disable builtin indent module
      --},
      indent = {
        enable = true,
      },
      textobjects = {
        select = {
          enable = true,

          -- Automatically jump forward to textobjects, similar to targets.vim
          lookahead = true,

          keymaps = {
            -- You can use the capture groups defined in textobjects.scm
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            -- you can optionally set descriptions to the mappings (used in the desc parameter of nvim_buf_set_keymap
            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
          },
          -- You can choose the select mode (default is charwise 'v')
          selection_modes = {
            ['@parameter.outer'] = 'v', -- charwise
            ['@function.outer'] = 'V', -- linewise
            ['@class.outer'] = '<c-v>', -- blockwise
          },
          -- If you set this to `true` (default is `false`) then any textobject is
          -- extended to include preceding or succeeding whitespace. Succeeding
          -- whitespace has priority in order to act similarly to eg the built-in
          -- `ap`. Can also be a function (see above).
          include_surrounding_whitespace = true,
          -- indent = {
          --   enable = true
          -- },
          -- yati = {
          --   enable = true,
          --   -- Disable by languages, see `Supported languages`
          --   disable = { "python" },

          --   -- Whether to enable lazy mode (recommend to enable this if bad indent happens frequently)
          --   default_lazy = true,

          --   -- Determine the fallback method used when we cannot calculate indent by tree-sitter
          --   --   "auto": fallback to vim auto indent
          --   --   "asis": use current indent as-is
          --   --   "cindent": see `:h cindent()`
          --   -- Or a custom function return the final indent result.
          --   default_fallback = "auto"
          -- },
          -- indent = {
          --   enable = false -- disable builtin indent module
          -- }
        },
--      },
--    }
--    require'nvim-treesitter.configs'.setup {
--      textobjects = {
        move = {
          enable = true,
          set_jumps = true, -- whether to set jumps in the jumplist
          goto_next_start = {
            ["]m"] = "@function.outer",
            ["]]"] = { query = "@class.outer", desc = "Next class start" },
            --
            -- You can use regex matching (i.e. lua pattern) and/or pass a list in a "query" key to group multiple queries.
            ["]o"] = "@loop.*",
            -- ["]o"] = { query = { "@loop.inner", "@loop.outer" } }
            --
            -- You can pass a query group to use query from `queries/<lang>/<query_group>.scm file in your runtime path.
            -- Below example nvim-treesitter's `locals.scm` and `folds.scm`. They also provide highlights.scm and indent.scm.
            ["]s"] = { query = "@scope", query_group = "locals", desc = "Next scope" },
            ["]z"] = { query = "@fold", query_group = "folds", desc = "Next fold" },
          },
          goto_next_end = {
            ["]M"] = "@function.outer",
            ["]["] = "@class.outer",
          },
          goto_previous_start = {
            ["[m"] = "@function.outer",
            ["[["] = "@class.outer",
          },
          goto_previous_end = {
            ["[M"] = "@function.outer",
            ["[]"] = "@class.outer",
          },
          -- Below will go to either the start or the end, whichever is closer.
          -- Use if you want more granular movements
          -- Make it even more gradual by adding multiple queries and regex.
          goto_next = {
            ["]d"] = "@conditional.outer",
          },
          goto_previous = {
            ["[d"] = "@conditional.outer",
          }
          },
      },
    }
  end)
EOF

lua << EOF
  pcall(function()
    -- Gp.nvim (GPT prompt) Neovim AI plugin
    -- GpChatNew
    -- GpSelectAgent
    local conf = {
      -- For customization, refer to Install > Configuration in the Documentation/Readme
      providers = {
        ollama = {
          disable = false,
          endpoint = "http://localhost:11434/api/chat",
        }
      },
      agents = {
        {
          provider = "ollama",
          name = "OllamaLocalChatGemma3",
          chat = true,
          command = false,
          -- string with model name or table with model name and parameters
          model = {
            model = "gemma3",
            think = false, -- toggle thinking mode for Ollama's thinking models
          },
          -- system prompt (use this to specify the persona/role of the AI)
          system_prompt = "You are a general AI assistant.",
        },
        {
          provider = "ollama",
          name = "OllamaLocalChatDevstral",
          chat = true,
          command = false,
          -- string with model name or table with model name and parameters
          model = {
            model = "devstral",
            think = false, -- toggle thinking mode for Ollama's thinking models
          },
          -- system prompt (use this to specify the persona/role of the AI)
          system_prompt = "You are a general AI assistant.",
          disable = false,
        },
        {
          provider = "ollama",
          name = "OllamaLocalChatGptOss",
          chat = true,
          command = false,
          -- string with model name or table with model name and parameters
          model = {
            model = "gpt-oss",
            think = false, -- toggle thinking mode for Ollama's thinking models
          },
          -- system prompt (use this to specify the persona/role of the AI)
          system_prompt = "You are a general AI assistant.",
        },
        {
          provider = "ollama",
          name = "OllamaLocalChatDeepseekR1",
          chat = true,
          command = false,
          -- string with model name or table with model name and parameters
          model = {
            model = "deepseek-r1",
            think = true, -- toggle thinking mode for Ollama's thinking models
          },
          -- system prompt (use this to specify the persona/role of the AI)
          system_prompt = "You are a general AI assistant.",
        },
        {
          provider = "ollama",
          name = "OllamaLocalChatPhi4",
          chat = true,
          command = false,
          -- string with model name or table with model name and parameters
          model = {
            model = "phi4-reasoning",
            think = true, -- toggle thinking mode for Ollama's thinking models
          },
          -- system prompt (use this to specify the persona/role of the AI)
          system_prompt = "You are a general AI assistant.",
        }
      }
    }
    require("gp").setup(conf)
  end)
EOF

lua << EOF
  pcall(function()
    require("snacks").setup({
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      bigfile = { enabled = false },
      dashboard = { enabled = false },
      explorer = { enabled = false },
      indent = { enabled = false },
      input = { enabled = true },
      picker = { enabled = true },
      notifier = { enabled = false },
      quickfile = { enabled = true },
      scope = { enabled = false },
      scroll = { enabled = false },
      statuscolumn = { enabled = false },
      words = { enabled = false },
    })
    require("noice").setup({
      -- cmdline = {enabled = false},
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = false, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
      cmdline = {
        view = "cmdline",
      },
    })
  end)
EOF

lua << EOF
  pcall(function()
    require("codecompanion").setup({
      adapters = {
        http = {
          gemma3 = function()
            return require("codecompanion.adapters").extend("ollama", {
              name = "gemma3", -- Give this adapter a different name to differentiate it from the default ollama adapter
              opts = {
                vision = true,
                stream = true,
              },
              schema = {
                model = {
                  --default = "gemma3",
                  default = "gemma3:12b",
                  --default = "gpt-oss:120b-cloud",
                  --default = "minimax-m2:cloud",
                  --default = "gemma3:27b",
                  --default = "gpt-oss",
                  --default = "devstral:latest",
                  --default = "phi4-reasoning",
                  --default = 'qwen3-coder',
                },
                num_ctx = {
                  default = 16384,
                },
                think = {
                  default = false,
                },
                keep_alive = {
                  default = "5m",
                },
              },
            })
          end,
          gptOss = function()
            return require("codecompanion.adapters").extend("ollama", {
              name = "gpt-oss", -- Give this adapter a different name to differentiate it from the default ollama adapter
              opts = {
                vision = true,
                stream = true,
              },
              schema = {
                model = {
                  default = "gpt-oss",
                  --default = "gpt-oss",
                  --default = "devstral:latest",
                  --default = "phi4-reasoning",
                  --default = 'qwen3-coder',
                },
                num_ctx = {
                  default = 16384,
                },
                think = {
                  default = false,
                },
                keep_alive = {
                  default = "5m",
                },
              },
            })
          end,
        },
      },
-- `adapters.<adapter_name>` and `adapters.opts` is deprecated, use `adapters.http.<adapter_name>` and `adapters.http.
-- opts` instead.
-- Feature will be removed in CodeCompanion v18.0.0
        -- my_openai = function()
        --   return require("codecompanion.adapters").extend("openai_compatible", {
        --     env = {
        --       url = "http://127.0.0.1:11434", -- optional: default value is ollama url http://127.0.0.1:11434
        --       --api_key = "OpenAI_API_KEY", -- optional: if your endpoint is authenticated
        --       chat_url = "/v1/chat/completions", -- optional: default value, override if different
        --       models_endpoint = "/v1/models", -- optional: attaches to the end of the URL to form the endpoint to retrieve models
        --     },
        --     schema = {
        --       model = {
        --         default = "gemma3",  -- define llm model to be used
        --         --default = "gpt-oss",
        --         --default = "devstral:latest",
        --         --default = "phi4-reasoning",
        --       },
        --       temperature = {
        --         order = 2,
        --         mapping = "parameters",
        --         type = "number",
        --         optional = true,
        --         default = 0.8,
        --         desc = "What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. We generally recommend altering this or top_p but not both.",
        --         validate = function(n)
        --           return n >= 0 and n <= 2, "Must be between 0 and 2"
        --         end,
        --       },
        --       max_completion_tokens = {
        --         order = 3,
        --         mapping = "parameters",
        --         type = "integer",
        --         optional = true,
        --         default = nil,
        --         desc = "An upper bound for the number of tokens that can be generated for a completion.",
        --         validate = function(n)
        --           return n > 0, "Must be greater than 0"
        --         end,
        --       },
        --       stop = {
        --         order = 4,
        --         mapping = "parameters",
        --         type = "string",
        --         optional = true,
        --         default = nil,
        --         desc = "Sets the stop sequences to use. When this pattern is encountered the LLM will stop generating text and return. Multiple stop patterns may be set by specifying multiple separate stop parameters in a modelfile.",
        --         validate = function(s)
        --           return s:len() > 0, "Cannot be an empty string"
        --         end,
        --       },
        --       logit_bias = {
        --         order = 5,
        --         mapping = "parameters",
        --         type = "map",
        --         optional = true,
        --         default = nil,
        --         desc = "Modify the likelihood of specified tokens appearing in the completion. Maps tokens (specified by their token ID) to an associated bias value from -100 to 100. Use https://platform.openai.com/tokenizer to find token IDs.",
        --         subtype_key = {
        --           type = "integer",
        --         },
        --         subtype = {
        --           type = "integer",
        --           validate = function(n)
        --             return n >= -100 and n <= 100, "Must be between -100 and 100"
        --           end,
        --         },
        --       },
        --     },
        --   })
        -- end,
      strategies = {
        chat = {
          adapter = "gptOss",
        },
        inline = {
          adapter = "gemma3",
        },
        agent = {
          adapter = "gemma3",
        },
      }
    })
  end)
EOF

lua << EOF
  pcall(function()
    -- Jump to previous buffer
    require("bufjump").setup({
      forward_key = "<C-S-p>",
      backward_key = "<C-p>",
      on_success = nil
    })
  end)
EOF

lua << EOF
  pcall(function()
    require("CopilotChat").setup {
      -- See Configuration section for options
    }
    require('CopilotChat.config').providers.ollama = {
      prepare_input = require('CopilotChat.config.providers').copilot.prepare_input,
      prepare_output = require('CopilotChat.config.providers').copilot.prepare_output,

      get_models = function(headers)
        local response, err = require('CopilotChat.utils').curl_get('http://localhost:11434/v1/models', {
          headers = headers,
          json_response = true,
        })

        if err then
          error(err)
        end

        return vim.tbl_map(function(model)
          return {
            id = model.id,
            name = model.id,
          }
        end, response.body.data)
      end,

      get_url = function()
        return 'http://localhost:11434/v1/chat/completions'
      end,
    }
  end)
EOF

lua << EOF
  pcall(function()
    require("better_escape").setup({
      timeout = 200,
      default_mappings = false,
      mappings = {
          i = {
              j = {
                  -- These can all also be functions
                  k = "<Esc>`^",
                  j = "<Esc>",
              },
          },
          c = {
              j = {
                  k = "<Esc>",
                  j = "<Esc>",
              },
          },
          t = {
              j = {
                  k = "<C-\\><C-n>",
              },
          },
          v = {
              j = {
                  k = "<Esc>",
              },
          },
          s = {
              j = {
                  k = "<Esc>",
              },
          },
      },
  })
  end)
EOF

lua <<EOF
  pcall(function()
    require('ollama').setup({
      -- model = "qwen2.5-coder:latest",
      model = "mistral:latest", -- default model
      -- url = "http://127.0.0.1:11434",
      -- serve = {
      --   on_start = false,
      --   command = "ollama",
      --   args = { "serve" },
      --   stop_command = "pkill",
      --   stop_args = { "-SIGTERM", "ollama" },
      -- },
      -- View the actual default prompts in ./lua/ollama/prompts.lua
      prompts = {
        Review_Code = {
          prompt = "Review and optimize the following $ftype code so that it is efficient and both easier to read and understand. "
            .. "Respond EXACTLY in this format:\n```$ftype\n<your code>\n```"
            .. "\n\n```$ftype\n$sel```",
          --action = "replace",
          --model = "qwen2.5-coder:latest",
        },
      }
    })
  end)
EOF

lua <<EOF
  pcall(function()
    require("oil").setup()
    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end)
EOF

"let g:any_jump_disable_default_keybindings = 1
" Optionally do not ignore ignored directories for any jump
let g:any_jump_disable_vcs_ignore = 0

function! AllAnyJumpToggle()
    if g:any_jump_disable_vcs_ignore
        let g:any_jump_disable_vcs_ignore = 0
        echo "Any Jump: Ignoring VCS ignore files"
    else
        let g:any_jump_disable_vcs_ignore = 1
        echo "Any Jump: NOT ignoring VCS ignore files"
    endif
endfunction

lua <<EOF
  -- Set up nvim-cmp.
  pcall(function()
    local cmp = require'cmp'

    cmp.setup({
      snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
          -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
          -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
          -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
          -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)

          -- For `mini.snippets` users:
          -- local insert = MiniSnippets.config.expand.insert or MiniSnippets.default_insert
          -- insert({ body = args.body }) -- Insert at cursor
          -- cmp.resubscribe({ "TextChangedI", "TextChangedP" })
          -- require("cmp.config").set_onetime({ sources = {} })
        end,
      },
      window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
      },
      view = {
        entries = {
          vertical_positioning = 'above',
        },
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-l>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- For vsnip users.
        -- { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
      }, {
        { name = 'buffer' },
      })
    })

    -- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
    -- Set configuration for specific filetype.
    --[[ cmp.setup.filetype('gitcommit', {
      sources = cmp.config.sources({
        { name = 'git' },
      }, {
        { name = 'buffer' },
      })
   })
   require("cmp_git").setup() ]]--

    -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' }
      }),
      matching = { disallow_symbol_nonprefix_matching = false }
    })

    -- Set up lspconfig.
    --local capabilities = require('cmp_nvim_lsp').default_capabilities()
    -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
    -- vim.lsp.config('<YOUR_LSP_SERVER>', {
    --   capabilities = capabilities
    -- })
    -- vim.lsp.enable('<YOUR_LSP_SERVER>')
  end)
EOF

lua <<EOF
  pcall(function()
    require("screenkey").setup({
      win_opts = {
          row = vim.o.lines - vim.o.cmdheight,
          col = vim.o.columns,
      --     relative = "editor",
      --     anchor = "SE",
          width = 30,
          height = 1,
          border = "none",
      --     border = "single",
      },
      -- compress_after = 3,
      clear_after = 30,
      -- disable = {
      --     filetypes = {},
      --     buftypes = {},
      -- },
      -- show_leader = true,
      -- group_mappings = false,
      -- display_infront = {},
      -- display_behind = {},
      -- keys = {
      --     ["<TAB>"] = "󰌒",
      --     ["<CR>"] = "󰌑",
      --     ["<ESC>"] = "Esc",
      --     ["<SPACE>"] = "␣",
      --     ["<BS>"] = "󰌥",
      --     ["<DEL>"] = "Del",
      --     ["<LEFT>"] = "",
      --     ["<RIGHT>"] = "",
      --     ["<UP>"] = "",
      --     ["<DOWN>"] = "",
      --     ["<HOME>"] = "Home",
      --     ["<END>"] = "End",
      --     ["<PAGEUP>"] = "PgUp",
      --     ["<PAGEDOWN>"] = "PgDn",
      --     ["<INSERT>"] = "Ins",
      --     ["<F1>"] = "󱊫",
      --     ["<F2>"] = "󱊬",
      --     ["<F3>"] = "󱊭",
      --     ["<F4>"] = "󱊮",
      --     ["<F5>"] = "󱊯",
      --     ["<F6>"] = "󱊰",
      --     ["<F7>"] = "󱊱",
      --     ["<F8>"] = "󱊲",
      --     ["<F9>"] = "󱊳",
      --     ["<F10>"] = "󱊴",
      --     ["<F11>"] = "󱊵",
      --     ["<F12>"] = "󱊶",
      --     ["CTRL"] = "Ctrl",
      --     ["ALT"] = "Alt",
      --     ["SUPER"] = "󰘳",
      --     ["<leader>"] = "<leader>",
      --},
    })
    --require("screenkey").toggle()
  end)
EOF

lua <<EOF
  pcall(function()
    require'treesitter-context'.setup{
      max_lines = 10, -- How many lines the window should span. Values <= 0 mean no limit.
    }
    vim.keymap.set("n", "<C-m>", function()
      require("treesitter-context").go_to_context(vim.v.count1)
    end, { silent = true })
  end)
EOF

lua <<EOF
  pcall(function()
    --local lsp = require('lsp-zero').preset({
    --  name = 'minimal',
    --  set_lsp_keymaps = true,
    --  manage_nvim_cmp = true,
    --  --suggest_lsp_servers = true,
    --})

    --lsp.setup()

    -- local signs = {
    --   { name = "DiagnosticSignError", text = "" },
    --   { name = "DiagnosticSignWarn", text = "" },
    --   { name = "DiagnosticSignHint", text = "" },
    --   { name = "DiagnosticSignInfo", text = "" },
    -- }
    -- for _, sign in ipairs(signs) do
    --   vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
    -- end

    vim.diagnostic.config({
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "",
          [vim.diagnostic.severity.WARN]  = "",
          [vim.diagnostic.severity.INFO]  = "",
          [vim.diagnostic.severity.HINT]  = "",
        },
        numhl = {
          [vim.diagnostic.severity.ERROR] = "DiagnosticSignError",
          [vim.diagnostic.severity.WARN]  = "DiagnosticSignWarn",
          [vim.diagnostic.severity.INFO]  = "DiagnosticSignInfo",
          [vim.diagnostic.severity.HINT]  = "DiagnosticSignHint",
        },
      },
    })
    -- vim.lsp.config.on_attach(function(client, bufnr)
    --   local opts = {buffer = bufnr}
    --   vim.keymap.set('n', '<leader>k', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    --     -- local opts = { noremap=true, silent=true, buffer=ev.buf }
    --     -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    --     -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    --     -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    --     -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    --     -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    --     -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    --     -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    --     -- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    --     -- vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    --     -- vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
    --     -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    -- end)
  end)
EOF

source ~/.config/nvim/vim-plug/plugins-load.lua

lua << EOF
  pcall(function()
    require('hop').setup()
    local hop = require('hop')
    local directions = require('hop.hint').HintDirection
    -- vim.keymap.set('', 'f', function()
    --   hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = false })
    -- end, {remap=true})
    -- vim.keymap.set('', 'F', function()
    --   hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = false })
    -- end, {remap=true})
  end)
EOF

lua << EOF

  pcall(function()
    require("nvim-tree").setup {
      on_attach = "default",
      hijack_cursor = false,
      auto_reload_on_write = true,
      disable_netrw = false,
      hijack_netrw = true,
      hijack_unnamed_buffer_when_opening = false,
      root_dirs = {},
      prefer_startup_root = false,
      sync_root_with_cwd = false,
      reload_on_bufenter = false,
      respect_buf_cwd = false,
      select_prompts = false,
      sort = {
        sorter = "name",
        folders_first = true,
        files_first = false,
      },
      view = {
        centralize_selection = false,
        cursorline = true,
        debounce_delay = 15,
        side = "left",
        preserve_window_proportions = false,
        number = false,
        relativenumber = false,
        signcolumn = "yes",
        width = 30,
        float = {
          enable = false,
          quit_on_focus_loss = true,
          open_win_config = {
            relative = "editor",
            border = "rounded",
            width = 30,
            height = 30,
            row = 1,
            col = 1,
          },
        },
      },
      renderer = {
        add_trailing = false,
        group_empty = false,
        full_name = false,
        root_folder_label = ":~:s?$?/..?",
        indent_width = 2,
        special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
        symlink_destination = true,
        highlight_git = false,
        highlight_diagnostics = false,
        highlight_opened_files = "none",
        highlight_modified = "none",
        indent_markers = {
          enable = false,
          inline_arrows = true,
          icons = {
            corner = "└",
            edge = "│",
            item = "│",
            bottom = "─",
            none = " ",
          },
        },
        icons = {
          web_devicons = {
            file = {
              enable = true,
              color = true,
            },
            folder = {
              enable = false,
              color = true,
            },
          },
          git_placement = "before",
          diagnostics_placement = "signcolumn",
          modified_placement = "after",
          padding = " ",
          symlink_arrow = " ➛ ",
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
            diagnostics = true,
            modified = true,
          },
          glyphs = {
            default = "",
            symlink = "",
            bookmark = "󰆤",
            modified = "●",
            folder = {
              arrow_closed = "",
              arrow_open = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
            git = {
              --unstaged = "✗",
              unstaged = "",
              --unstaged = "●",
              staged = "✓",
              unmerged = "",
              renamed = "➜",
              untracked = "★",
              deleted = "",
              ignored = "◌",
            },
          },
        },
      },
      hijack_directories = {
        enable = true,
        auto_open = true,
      },
      update_focused_file = {
        enable = true,
        update_root = false,
        ignore_list = {},
      },
      system_open = {
        cmd = "",
        args = {},
      },
      git = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        disable_for_dirs = {},
        timeout = 400,
      },
      diagnostics = {
        enable = false,
        show_on_dirs = false,
        show_on_open_dirs = true,
        debounce_delay = 50,
        severity = {
          min = vim.diagnostic.severity.HINT,
          max = vim.diagnostic.severity.ERROR,
        },
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      modified = {
        enable = false,
        show_on_dirs = true,
        show_on_open_dirs = true,
      },
      filters = {
        git_ignored = true,
        dotfiles = false,
        git_clean = false,
        no_buffer = false,
        custom = {},
        exclude = {},
      },
      live_filter = {
        prefix = "[FILTER]: ",
        always_show_folders = true,
      },
      filesystem_watchers = {
        enable = true,
        debounce_delay = 50,
        ignore_dirs = {},
      },
      actions = {
        use_system_clipboard = true,
        change_dir = {
          enable = true,
          global = false,
          restrict_above_cwd = false,
        },
        expand_all = {
          max_folder_discovery = 300,
          exclude = {},
        },
        file_popup = {
          open_win_config = {
            col = 1,
            row = 1,
            relative = "cursor",
            border = "shadow",
            style = "minimal",
          },
        },
        open_file = {
          quit_on_open = false,
          eject = true,
          resize_window = true,
          window_picker = {
            enable = true,
            picker = "default",
            chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
            exclude = {
              filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
              buftype = { "nofile", "terminal", "help" },
            },
          },
        },
        remove_file = {
          close_window = true,
        },
      },
      trash = {
        cmd = "gio trash",
      },
      tab = {
        sync = {
          open = false,
          close = false,
          ignore = {},
        },
      },
      notify = {
        threshold = vim.log.levels.INFO,
        absolute_path = true,
      },
      ui = {
        confirm = {
          remove = true,
          trash = true,
        },
      },
      experimental = {},
      log = {
        enable = false,
        truncate = false,
        types = {
          all = false,
          config = false,
          copy_paste = false,
          dev = false,
          diagnostics = false,
          git = false,
          profile = false,
          watcher = false,
        },
      },
    }
  end)

EOF

lua << EOF

  pcall(function()
    require("mason").setup()
    require("mason-lspconfig").setup {
      ensure_installed = { "ts_ls", "eslint", "cssls" },
    }
  end)

EOF

lua << EOF

  pcall(function()
    -- default configuration
    require('illuminate').configure({
        -- providers: provider used to get references in the buffer, ordered by priority
        providers = {
            'lsp',
            'treesitter',
            'regex',
        },
        -- delay: delay in milliseconds
        delay = 100,
        -- filetype_overrides: filetype specific overrides.
        -- The keys are strings to represent the filetype while the values are tables that
        -- supports the same keys passed to .configure except for filetypes_denylist and filetypes_allowlist
        filetype_overrides = {},
        -- filetypes_denylist: filetypes to not illuminate, this overrides filetypes_allowlist
        filetypes_denylist = {
            'dirbuf',
            'dirvish',
            'fugitive',
        },
        -- filetypes_allowlist: filetypes to illuminate, this is overridden by filetypes_denylist
        -- You must set filetypes_denylist = {} to override the defaults to allow filetypes_allowlist to take effect
        filetypes_allowlist = {},
        -- modes_denylist: modes to not illuminate, this overrides modes_allowlist
        -- See `:help mode()` for possible values
        modes_denylist = {},
        -- modes_allowlist: modes to illuminate, this is overridden by modes_denylist
        -- See `:help mode()` for possible values
        modes_allowlist = {},
        -- providers_regex_syntax_denylist: syntax to not illuminate, this overrides providers_regex_syntax_allowlist
        -- Only applies to the 'regex' provider
        -- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
        providers_regex_syntax_denylist = {},
        -- providers_regex_syntax_allowlist: syntax to illuminate, this is overridden by providers_regex_syntax_denylist
        -- Only applies to the 'regex' provider
        -- Use :echom synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')
        providers_regex_syntax_allowlist = {},
        -- under_cursor: whether or not to illuminate under the cursor
        under_cursor = false,
        -- large_file_cutoff: number of lines at which to use large_file_config
        -- The `under_cursor` option is disabled when this cutoff is hit
        large_file_cutoff = nil,
        -- large_file_config: config to use for large files (based on large_file_cutoff).
        -- Supports the same keys passed to .configure
        -- If nil, vim-illuminate will be disabled for large files.
        large_file_overrides = nil,
        -- min_count_to_highlight: minimum number of matches required to perform highlighting
        min_count_to_highlight = 1,
        -- should_enable: a callback that overrides all other settings to
        -- enable/disable illumination. This will be called a lot so don't do
        -- anything expensive in it.
        should_enable = function(bufnr) return true end,
        -- case_insensitive_regex: sets regex case sensitivity
        case_insensitive_regex = false,
    })
  end)

EOF

lua << EOF

  pcall(function()
    require("diffview").setup({
      enhanced_diff_hl = false,
      hooks = {
        diff_buf_read = function(bufnr)
          -- Change local options in diff buffers
          vim.opt_local.wrap = false
          vim.opt_local.list = false
          vim.opt_local.relativenumber = false
          --vim.opt_local.colorcolumn = { 80 }
        end,
        -- view_opened = function(view)
        --   print(
        --     ("A new %s was opened on tab page %d!")
        --     :format(view.class:name(), view.tabpage)
        --   )
        -- end,
      }
    })
  end)

EOF

lua << EOF
  pcall(function()
    require('gitsigns').setup{
      on_attach = function(bufnr)
        local gitsigns = require('gitsigns')

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']c', function()
          if vim.wo.diff then
            vim.cmd.normal({']c', bang = true})
          else
            gitsigns.nav_hunk('next')
          end
        end)

        map('n', '[c', function()
          if vim.wo.diff then
            vim.cmd.normal({'[c', bang = true})
          else
            gitsigns.nav_hunk('prev')
          end
        end)

        -- Actions
        -- map('n', '<leader>hs', gitsigns.stage_hunk)
        -- map('n', '<leader>hr', gitsigns.reset_hunk)
        -- map('v', '<leader>hs', function() gitsigns.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
        -- map('v', '<leader>hr', function() gitsigns.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
        -- map('n', '<leader>hS', gitsigns.stage_buffer)
        -- map('n', '<leader>hu', gitsigns.undo_stage_hunk)
        -- map('n', '<leader>hR', gitsigns.reset_buffer)
        -- map('n', '<leader>hp', gitsigns.preview_hunk)
        -- map('n', '<leader>hb', function() gitsigns.blame_line{full=true} end)
        -- map('n', '<leader>tb', gitsigns.toggle_current_line_blame)
        -- map('n', '<leader>hd', gitsigns.diffthis)
        -- map('n', '<leader>hD', function() gitsigns.diffthis('~') end)
        -- map('n', '<leader>td', gitsigns.toggle_deleted)

        -- Text object
        map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
      end
    }
  end)
EOF

lua << EOF
  pcall(function()
    require('neoclip').setup({
      history = 10000,
      enable_persistent_history = true,
      on_select = {
        move_to_front = true,
        close_telescope = true,
      },
    })
    local telescope = require('telescope')
    telescope.setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {
            -- even more opts
          }
        }
      },
      defaults = {
        mappings = {
          i = {
            ["<C-Down>"] = require('telescope.actions').cycle_history_next,
            ["<C-Up>"] = require('telescope.actions').cycle_history_prev,
          }
        }
      }
    })
    telescope.load_extension('neoclip')
    telescope.load_extension("ui-select")
  end)
EOF

lua << EOF
  pcall(function()
    -- indent-blankline.nvim
    local highlight = {
        "CursorColumn",
        "Whitespace",
    }
    require("ibl").setup {
        enabled = true,
        -- indent = { highlight = highlight, char = "" },
        -- whitespace = {
        --     highlight = highlight,
        --     remove_blankline_trail = false,
        -- },
        --scope = { enabled = false },
    }
  end)
EOF

" lua << EOF
"  -- jump to the begin of scope, uses hop, starting with a for nearest scope if not visible in buffer
"  vim.keymap.set("n", "<space>i", function()
"    require('tsht').move({ side = "start" })
"  end)
" EOF

" select in visual mode entire function using hop
omap     <silent> m :<C-U>lua require('tsht').nodes()<CR>
xnoremap <silent> m :lua require('tsht').nodes()<CR>

lua << EOF
  pcall(function()
    require('flash').setup({
      -- labels = "abcdefghijklmnopqrstuvwxyz",
      labels = "asdfghjklqwertyuiopzxcvbnm",
      search = {
        -- search/jump in all windows
        multi_window = true,
        -- search direction
        forward = true,
        -- when `false`, find only matches in the given direction
        wrap = true,
        ---@type Flash.Pattern.Mode
        -- Each mode will take ignorecase and smartcase into account.
        -- * exact: exact match
        -- * search: regular search
        -- * fuzzy: fuzzy search
        -- * fun(str): custom function that returns a pattern
        --   For example, to only match at the beginning of a word:
        --   mode = function(str)
        --     return "\\<" .. str
        --   end,
        mode = "exact",
        -- behave like `incsearch`
        incremental = false,
        -- Excluded filetypes and custom window filters
        ---@type (string|fun(win:window))[]
        exclude = {
          "notify",
          "cmp_menu",
          "noice",
          "flash_prompt",
          function(win)
            -- exclude non-focusable windows
            return not vim.api.nvim_win_get_config(win).focusable
          end,
        },
        -- Optional trigger character that needs to be typed before
        -- a jump label can be used. It's NOT recommended to set this,
        -- unless you know what you're doing
        trigger = "",
        -- max pattern length. If the pattern length is equal to this
        -- labels will no longer be skipped. When it exceeds this length
        -- it will either end in a jump or terminate the search
        max_length = false, ---@type number|false
      },
      jump = {
        -- save location in the jumplist
        jumplist = true,
        -- jump position
        pos = "start", ---@type "start" | "end" | "range"
        -- add pattern to search history
        history = false,
        -- add pattern to search register
        register = false,
        -- clear highlight after jump
        nohlsearch = false,
        -- automatically jump when there is only one match
        autojump = false,
        -- You can force inclusive/exclusive jumps by setting the
        -- `inclusive` option. By default it will be automatically
        -- set based on the mode.
        inclusive = nil, ---@type boolean?
        -- jump position offset. Not used for range jumps.
        -- 0: default
        -- 1: when pos == "end" and pos < current position
        offset = nil, ---@type number
      },
      label = {
        -- allow uppercase labels
        uppercase = true,
        -- add any labels with the correct case here, that you want to exclude
        exclude = "",
        -- add a label for the first match in the current window.
        -- you can always jump to the first match with `<CR>`
        current = true,
        -- show the label after the match
        after = true, ---@type boolean|number[]
        -- show the label before the match
        before = false, ---@type boolean|number[]
        -- position of the label extmark
        style = "overlay", ---@type "eol" | "overlay" | "right_align" | "inline"
        -- flash tries to re-use labels that were already assigned to a position,
        -- when typing more characters. By default only lower-case labels are re-used.
        reuse = "lowercase", ---@type "lowercase" | "all" | "none"
        -- for the current window, label targets closer to the cursor first
        distance = true,
        -- minimum pattern length to show labels
        -- Ignored for custom labelers.
        min_pattern_length = 0,
        -- Enable this to use rainbow colors to highlight labels
        -- Can be useful for visualizing Treesitter ranges.
        rainbow = {
          enabled = false,
          -- number between 1 and 9
          shade = 5,
        },
        -- With `format`, you can change how the label is rendered.
        -- Should return a list of `[text, highlight]` tuples.
        ---@class Flash.Format
        ---@field state Flash.State
        ---@field match Flash.Match
        ---@field hl_group string
        ---@field after boolean
        ---@type fun(opts:Flash.Format): string[][]
        format = function(opts)
          return { { opts.match.label, opts.hl_group } }
        end,
      },
      highlight = {
        -- show a backdrop with hl FlashBackdrop
        backdrop = true,
        -- Highlight the search matches
        matches = true,
        -- extmark priority
        priority = 5000,
        groups = {
          match = "FlashMatch",
          current = "FlashCurrent",
          backdrop = "FlashBackdrop",
          label = "FlashLabel",
        },
      },
      -- action to perform when picking a label.
      -- defaults to the jumping logic depending on the mode.
      ---@type fun(match:Flash.Match, state:Flash.State)|nil
      action = nil,
      -- initial pattern to use when opening flash
      pattern = "",
      -- When `true`, flash will try to continue the last search
      continue = false,
      -- Set config to a function to dynamically change the config
      config = nil, ---@type fun(opts:Flash.Config)|nil
      -- You can override the default options for a specific mode.
      -- Use it with `require("flash").jump({mode = "forward"})`
      ---@type table<string, Flash.Config>
      modes = {
        -- options used when flash is activated through
        -- a regular search with `/` or `?`
        search = {
          -- when `true`, flash will be activated during regular search by default.
          -- You can always toggle when searching with `require("flash").toggle()`
          enabled = true,
          highlight = { backdrop = false },
          jump = { history = true, register = true, nohlsearch = true },
          search = {
            -- `forward` will be automatically set to the search direction
            -- `mode` is always set to `search`
            -- `incremental` is set to `true` when `incsearch` is enabled
          },
        },
        -- options used when flash is activated through
        -- `f`, `F`, `t`, `T`, `;` and `,` motions
        char = {
          enabled = false,
          -- dynamic configuration for ftFT motions
          config = function(opts)
            -- autohide flash when in operator-pending mode
            opts.autohide = opts.autohide or (vim.fn.mode(true):find("no") and vim.v.operator == "y")

            -- disable jump labels when not enabled, when using a count,
            -- or when recording/executing registers
            opts.jump_labels = opts.jump_labels
              and vim.v.count == 0
              and vim.fn.reg_executing() == ""
              and vim.fn.reg_recording() == ""

            -- Show jump labels only in operator-pending mode
            -- opts.jump_labels = vim.v.count == 0 and vim.fn.mode(true):find("o")
          end,
          -- hide after jump when not using jump labels
          autohide = false,
          -- show jump labels
          jump_labels = false,
          -- set to `false` to use the current line only
          multi_line = true,
          -- When using jump labels, don't use these keys
          -- This allows using those keys directly after the motion
          label = { exclude = "hjkliardc" },
          -- by default all keymaps are enabled, but you can disable some of them,
          -- by removing them from the list.
          -- If you rather use another key, you can map them
          -- to something else, e.g., { [";"] = "L", [","] = H }
          keys = {}, -- "f", "F", "t", "T", ";", "," },
          ---@alias Flash.CharActions table<string, "next" | "prev" | "right" | "left">
          -- The direction for `prev` and `next` is determined by the motion.
          -- `left` and `right` are always left and right.
          char_actions = function(motion)
            return {
              [";"] = "next", -- set to `right` to always go right
              [","] = "prev", -- set to `left` to always go left
              -- clever-f style
              [motion:lower()] = "next",
              [motion:upper()] = "prev",
              -- jump2d style: same case goes next, opposite case goes prev
              -- [motion] = "next",
              -- [motion:match("%l") and motion:upper() or motion:lower()] = "prev",
            }
          end,
          search = { wrap = false },
          highlight = { backdrop = true },
          jump = { register = false },
        },
        -- options used for treesitter selections
        -- `require("flash").treesitter()`
        treesitter = {
          labels = "abcdefghijklmnopqrstuvwxyz",
          jump = { pos = "range" },
          search = { incremental = false },
          label = { before = true, after = true, style = "inline" },
          highlight = {
            backdrop = false,
            matches = false,
          },
        },
        treesitter_search = {
          jump = { pos = "range" },
          search = { multi_window = true, wrap = true, incremental = false },
          remote_op = { restore = true },
          label = { before = true, after = true, style = "inline" },
        },
        -- options used for remote flash
        remote = {
          remote_op = { restore = true, motion = true },
        },
      },
      -- options for the floating window that shows the prompt,
      -- for regular jumps
      prompt = {
        enabled = false,
        prefix = { { "⚡", "FlashPromptIcon" } },
        win_config = {
          relative = "editor",
          width = 1, -- when <=1 it's a percentage of the editor width
          height = 1,
          row = -1, -- when negative it's an offset from the bottom
          col = 0, -- when negative it's an offset from the right
          zindex = 1000,
        },
      },
      -- options for remote operator pending mode
      remote_op = {
        -- restore window views and cursor position
        -- after doing a remote operation
        restore = false,
        -- For `jump.pos = "range"`, this setting is ignored.
        -- `true`: always enter a new motion when doing a remote operation
        -- `false`: use the window's cursor position and jump target
        -- `nil`: act as `true` for remote windows, `false` for the current window
        motion = false,
      },
    -- --     search = {
    -- --         mode = function(str)
    -- --           return "\\<" .. str
    -- --         end
    -- --     },
    -- --     jump = {
    -- --         autojump = true,
    -- --     },
    -- --     label = {
    -- --         rainbow = {
    -- --           enabled = true,
    -- --           shade = 9,
    -- --         }
    -- --     }
    })

    -- -- vim.keymap.set({"n","o","x"},"j", function() require("flash").jump() end, {desc="Flash"})
    -- -- vim.keymap.set({"i"}, "<C-j>", function() require("flash").jump() end, {desc="Flash"})
    -- -- vim.keymap.set({"n"}, "S", function() require("flash").treesitter() end, {desc="Flash Treesitter"})
  end)
EOF


lua << EOF
  pcall(function()
    require("yanky").setup({
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    })
  end)
EOF

lua << EOF
  pcall(function()
    require("nvim-autopairs").setup(
      { map_cr = true }
    )
  end)
EOF

lua << EOF
  pcall(function()
    require("toggleterm").setup({
      open_mapping = [[<C-t>]],
      size = 30,
      -- while open disable leader key by setting timeout to 0
      on_open = function(term)
        vim.o.timeoutlen = 0
      end,
      on_close = function(term)
        vim.o.timeoutlen = 1000
      end,
    })
  end)
EOF

lua << EOF
  pcall(function()
    require('hlslens').setup()
    require("scrollbar").setup()
  end)
EOF

lua << EOF
  pcall(function()
  require('twilight').setup({
    dimming = {
      alpha = 0.5,
    }
  })
  end)
EOF

lua << EOF
  pcall(function()
    require'marks'.setup {
      -- builtin_marks = { ".", "<", ">", "^" },
      signs = true,
      sign_priority = {
        lower = 2,
        upper = 3,
        builtin = 1,
        bookmark = 4,
      },
      mappings = {
        delete_line = "dm-",
      },
    }
    -- remove line number highlighting on marked lines
    local group = vim.api.nvim_create_augroup("marks-fix-hl", {})
    vim.api.nvim_create_autocmd({ "VimEnter" }, {
      group = group,
      callback = function()
        vim.api.nvim_set_hl(0, "MarkSignNumHL", {})
      end,
    })
  end)
EOF

lua << EOF
  pcall(function()
    local gen = require('gen')
    gen.setup({
      model = "codellama:7b", -- The default model to use.
      --model = "mistral", -- The default model to use.
    })
    gen.prompts['Enhance_Code_No_Replace'] = {
      name = "Enhance_Code_No_Replace",
      prompt = "Enhance the following code, only output the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
      replace = false,
      extract = "```$filetype\n(.-)```",
    }
    gen.prompts['Enhance_Code_No_Replace_DeepSeek_Coder'] = {
      name = "Enhance_Code_No_Replace_DeepSeek_Coder",
      prompt = "Enhance the following code, only output the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
      replace = false,
      extract = "```$filetype\n(.-)```",
      model = "deepseek-coder:latest",
    }
    gen.prompts['Enhance_Code_No_Replace_CodeGemma'] = {
      name = "Enhance_Code_No_Replace_CodeGemma",
      prompt = "Enhance the following code, only output the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
      replace = false,
      extract = "```$filetype\n(.-)```",
      model = "codegemma:7b",
    }
    gen.prompts['Enhance_Code_No_Replace_Mistral'] = {
      name = "Enhance_Code_No_Replace_Mistral",
      prompt = "Enhance the following code, only output the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
      replace = false,
      extract = "```$filetype\n(.-)```",
      model = "mistral",
    }
    gen.prompts['Enhance_Code_No_Replace_Codestral'] = {
      name = "Enhance_Code_No_Replace_Codestral",
      prompt = "Enhance the following code, only output the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
      replace = false,
      extract = "```$filetype\n(.-)```",
      model = "codestral",
    }
    gen.prompts['Enhance_Code_No_Replace_Gemma2'] = {
      name = "Enhance_Code_No_Replace_Gemma2",
      prompt = "Enhance the following code, only output the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
      replace = false,
      extract = "```$filetype\n(.-)```",
      model = "gemma2",
    }
    gen.prompts['Enhance_Code_No_Replace_DeepSeek_Coder_V2'] = {
      name = "Enhance_Code_No_Replace_DeepSeek_Coder_V2",
      prompt = "Enhance the following code, only output the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
      replace = false,
      extract = "```$filetype\n(.-)```",
      model = "deepseek-coder-v2",
    }
    gen.prompts['Chat_With_DeepSeek_Coder'] = {
      prompt = "$input",
      model = "deepseek-coder:latest",
    }
    gen.prompts['Chat_With_DeepSeek_Coder_V2'] = {
      prompt = "$input",
      model = "deepseek-coder-v2",
    }
    gen.prompts['Chat_With_Llama3'] = {
      prompt = "$input",
      model = "Llama3",
    }
    gen.prompts['Chat_With_Mistral'] = {
      prompt = "$input",
      model = "mistral",
    }
    gen.prompts['Chat_With_Codestral'] = {
      prompt = "$input",
      model = "codestral",
    }
    gen.prompts['Enhance_Grammar_Spelling_with_Mistral'] = {
      prompt = "Modify the following text to improve grammar and spelling, just output the final text without additional quotes around it:\n$text",
      replace = false,
      model = "mistral",
    }
    gen.prompts['Enhance_Grammar_Spelling_with_Mistral_Deutsch'] = {
      prompt = "Korrigiere den folgenden Text und verbessere die Grammatik, gib einfach den end Text ohne die die Anführungszeichen:\n$text",
      replace = false,
      model = "mistral",
    }
    gen.prompts['Enhance_Grammar_Spelling_with_Llama3_Deutsch'] = {
      prompt = "Korrigiere den folgenden Text und verbessere die Grammatik, gib einfach den end Text ohne die die Anführungszeichen:\n$text",
      replace = false,
      model = "llama3",
    }
    gen.prompts['Translate_with_Llama3_Deutsch_German_to_Englisch'] = {
      prompt = "Translate the following text to English:\n$text",
      replace = false,
      model = "llama3",
    }
    gen.prompts['Generate_Commit_Message_with_Llama3_For_Changes'] = {
      prompt = "Generate a commit message for the following changes:\n$text",
      replace = false,
      model = "llama3",
    }
    gen.prompts['Generate_Commit_Message_with_Deep_Seek_Coder_For_Changes'] = {
      prompt = "Generate a commit message for the following changes:\n$text",
      replace = false,
      model = "deepseek-coder-v2",
    }
    gen.prompts['Review_Code_DeepSeek_Coder_V2'] = {
      name = "Review_Code_DeepSeek_Coder_V2",
      prompt =  "Review the following code and make concise suggestions:\n```$filetype\n$text\n```",
      replace = false,
      model = "deepseek-coder-v2",
    }
    -- gen.prompts['Review_With_QWen-2.5:3b'] = {
    --   name = "Review_With_QWen-2.5",
    --   prompt =  "Review the following code and make concise suggestions:\n```$filetype\n$text\n```",
    --   replace = false,
    --   model = "qwen2.5-coder:3b",
    -- }
    gen.prompts['Review_With_QWen-2.5'] = {
      name = "Review_With_QWen-2.5",
      prompt =  "Review the following code and make concise suggestions:\n```$filetype\n$text\n```",
      replace = false,
      model = "qwen2.5-coder",
    }
    gen.prompts['Review_With_QWen-2.5:14b'] = {
      name = "Review_With_QWen-2.5:14b",
      prompt =  "Review the following code and make concise suggestions:\n```$filetype\n$text\n```",
      replace = false,
      model = "qwen2.5-coder:14b",
    }
    gen.prompts['Review_With_CodeGemma'] = {
      name = "Review_With_CodeGemma",
      prompt =  "Review the following code and make concise suggestions:\n```$filetype\n$text\n```",
      replace = false,
      model = "codegemma:7b",
    }
    gen.prompts['Review_With_Codellama'] = {
      name = "Review_With_Codellama",
      prompt =  "Review the following code and make concise suggestions:\n```$filetype\n$text\n```",
      replace = false,
      model = "codellama:7b",
    }
    gen.prompts['Review_With_Codestral'] = {
      name = "Review_With_Codesral",
      prompt =  "Review the following code and make concise suggestions:\n```$filetype\n$text\n```",
      replace = false,
      model = "codestral",
    }
    gen.prompts['Review_With_Gpt-Oss'] = {
      name = "Review_With_Gpt-Oss",
      prompt =  "Review the following code and make concise suggestions:\n```$filetype\n$text\n```",
      replace = false,
      model = "gpt-oss",
    }
    gen.prompts['Review_With_Qwen3-Coder'] = {
      name = "Review_With_Qwen3-Coder",
      prompt =  "Review the following code and make concise suggestions:\n```$filetype\n$text\n```",
      replace = false,
      model = "qwen3-coder",
    }
    gen.prompts['Review_With_Phi4-Reasoning'] = {
      name = "Review_With_Phi4-Reasoning",
      prompt =  "Review the following code and make concise suggestions:\n```$filetype\n$text\n```",
      replace = false,
      model = "phi4-reasoning",
    }
    gen.prompts['Review_With_Devstral'] = {
      name = "Review_With_Devstral",
      prompt =  "Review the following code and make concise suggestions:\n```$filetype\n$text\n```",
      replace = false,
      model = "devstral",
    }
    gen.prompts['Ask_with_Llama3'] = {
      name = "Ask_with_Llama3",
      prompt = "Regarding the following text, $input:\n$text",
      model = "llama3",
    }
  end)
EOF

" lua << EOF
"   pcall(function()
"     local llm = require('llm')

"     llm.setup({
"       backend = "ollama",
"       --model = "starcoder2:3b",
"       --model = "codellama:7b",
"       model = "codellama:7b-code",
"       --model = "stable-code:latest",
"       accept_keymap = "<S-CR>",
"       dismiss_keymap = "<CR>",
"       url = "http://localhost:11434/api/generate",
"       -- request_body = {
"       --   options = {
"       --     temperature = 0.8, --0.2,
"       --     top_p = 0.95,
"       --   },
"       -- },
"       enable_suggestions_on_startup = false,
"       --enable_suggestions_on_startup = true,
"       -- MasonInstall llm-ls
"       lsp = {
"         bin_path = vim.api.nvim_call_function("stdpath", { "data" }) .. "/mason/bin/llm-ls",
"       },
"     })
"   end)
" EOF

  " api_token = nil, -- cf Install paragraph
  " model = "bigcode/starcoder2-15b", -- the model ID, behavior depends on backend
  " backend = "huggingface", -- backend ID, "huggingface" | "ollama" | "openai" | "tgi"
  " url = nil, -- the http url of the backend
  " tokens_to_clear = { "<|endoftext|>" }, -- tokens to remove from the model's output
  " -- parameters that are added to the request body, values are arbitrary, you can set any field:value pair here it will be passed as is to the backend
  " request_body = {
  "   parameters = {
  "     max_new_tokens = 60,
  "     temperature = 0.2,
  "     top_p = 0.95,
  "   },
  " },
  " -- set this if the model supports fill in the middle
  " fim = {
  "   enabled = true,
  "   prefix = "<fim_prefix>",
  "   middle = "<fim_middle>",
  "   suffix = "<fim_suffix>",
  " },
  " debounce_ms = 150,
  " accept_keymap = "<Tab>",
  " dismiss_keymap = "<S-Tab>",
  " tls_skip_verify_insecure = false,
  " -- llm-ls configuration, cf llm-ls section
  " lsp = {
  "   bin_path = nil,
  "   host = nil,
  "   port = nil,
  "   cmd_env = nil, -- or { LLM_LOG_LEVEL = "DEBUG" } to set the log level of llm-ls
  "   version = "0.5.3",
  " },
  " tokenizer = nil, -- cf Tokenizer paragraph
  " context_window = 1024, -- max number of tokens for the context window
  " enable_suggestions_on_startup = true,
  " enable_suggestions_on_files = "*", -- pattern matching syntax to enable suggestions on specific files, either a string or a list of strings
  " disable_url_path_completion = false, -- cf Backend


set termguicolors
lua << EOF
  pcall(function()
    local bufferline = require("bufferline")
    bufferline.setup{
      options = {
        style_preset = bufferline.style_preset.no_italic,
        color_icons = true
      }
    }
    require("scope").setup({})
  end)
EOF

lua <<EOF
  pcall(function()
    require("tokyodark").setup({})
  end)
EOF

lua <<EOF
  pcall(function()
    require("outline").setup({})
  end)
EOF

autocmd! User avante.nvim
lua << EOF
  pcall(function()
    require('avante_lib').load()
    --require('avante').setup()
    require('avante').setup({
      provider = "ollama",
      providers = {
        ollama = {
          --model = "qwq:32b",
          model = "gpt-oss",
          --model = "gpt-oss:120b-cloud",
          is_env_set = require("avante.providers.ollama").check_endpoint_alive,
        },
      }
      --mode = "legacy",
      --provider = "ollama",
      --providers = {
      --  ollama = {
      --    endpoint = "http://127.0.0.1:11434", -- Note that there is no /v1 at the end.
      --    --model = "gemma3",
      --    model = "gpt-oss",
      --    --model = "gpt-oss:120b-cloud",
      --    --model = "minimax-m2:cloud",
      --    --model = "codegemma",
      --    --model = "devstral",
      --    --model = "qwq:32b",
      --    disable_tools = true,
      --    disable_tool_calls = true,
      --  },
      --},
      -- provider = "ollama",
      -- providers = {
      --   ollama = {
      --     endpoint = "http://127.0.0.1:11434",
      --     timeout = 30000, -- Timeout in milliseconds
      --     model = "gemma3",
      --     --model = "phi4-reasoning",
      --     --model = "devstral",
      --     --model = "qwq:32b"
      --     --model = "deepseek-r1"
      --   },
      -- },
    })
  end)
EOF


lua <<EOF
  pcall(function()
    local wk = require("which-key")
    wk.add({
      { "<leader>q", "<cmd>:qall<cr>", desc = "Quit", mode = "n" },
      { "<leader>f", "<cmd>:Telescope find_files<cr>", desc = "Find File", mode = "n" },
      { "<leader>F", "<cmd>:Telescope find_files hidden=true no_ignore=true<cr>", desc = "Find File (incl hidden)", mode = "n" },
      { "<leader>g", "<cmd>:Telescope live_grep<cr>", desc = "Grep Text", mode = "n", icon = "󰺮" },
      { "<leader>G", "<cmd>:Telescope live_grep hidden=true glob_pattern=*<cr>", desc = "Grep Text (incl hidden)", icon = "󰺮", mode = "n" },
      { "<leader>h", "<cmd>:Telescope command_history<cr>", desc = "Command History (:Telescope command_history)", mode = "n" },
      { "<leader>i", "<cmd>:Git<cr>", desc = "Git Fugitive (:Git)", mode = "n" },
      -- { "<leader>i", "<cmd>:tab Git<cr>", desc = "Git Fugitive (:Git)", mode = "n" },
      -- { "<leader>I", "<cmd>:tabc<cr>", desc = "Close tab", mode = "n" },
      { "<leader>w", "<C-W>w", desc = "Next Window", mode = "n" },
      { "<leader>p", "<C-W>W", desc = "Prev Window", mode = "n" },
      { "<leader>.", "<cmd>:Telescope resume<cr>", desc = "Telescope resume", mode = "n" },
      { "<leader>c", "<cmd>:bd<cr>", desc = "Close buffer (:bd)", mode = "n" },
      { "<leader>r", "<cmd>:Ranger<cr>", desc = "Ranger (Q to quit)", mode = "n" },
      { "<leader>e", "<cmd>:NvimTreeToggle<cr>", desc = "Nvim Tree Toggle", mode = "n" },
      --{ "<leader>T", "<cmd>:FloatermToggle<cr>", desc = "Terminal Toggle", mode = "n" },
      { "<leader>E", "<cmd>:Explore<cr>", desc = "Explore", mode = "n" },
      { "<leader>?", "<cmd>:Cheat40<cr>", desc = "Cheat Sheet", mode = "n" },
      { "<leader>o", "<cmd>:Telescope oldfiles<cr>", desc = "Recent Files", mode = "n" },
      { "<leader>O", "<cmd>:Startify<cr>", desc = "Start Page", mode = "n" },
      { "<leader>x", "<cmd>:Gitsigns next_hunk<cr>", desc = "Next Hunk", mode = "n" },
      { "<leader>y", "<cmd>:Gitsigns prev_hunk<cr>", desc = "Prev Hunk", mode = "n" },
      { "<leader>X", "<cmd>:Gitsigns reset_hunk<cr>", desc = "Reset Hunk", mode = "n" },
      { "<leader>L", "<cmd>lua Snacks.lazygit()<cr>", desc = "LazyGit", mode = "n" },
      { "<leader>B", "<cmd>:Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer Fuzzy Find", mode = "n" },
      { "<leader>b", "<cmd>:Telescope buffers<cr>", desc = "Show buffers", mode = "n" },
      { "<leader>C", "<C-w>c", desc = "Close window (ctrl-w c)", mode = "n" },
      { "<leader>s", "<cmd>:w<cr>", desc = "Write File", mode = "n" },
      { "<leader>ta", "<cmd>:Telescope commands<cr>", desc = "All commands", mode = "n" },
      { "<leader>tr", "<cmd>:Telescope resume<cr>", desc = "Telescope resume", mode = "n" },
      { "<leader>tp", "<C-p>", desc = "Previous buffer <c-p>", mode = "n" },
      -- { "<leader>ag", "<C-g>", desc = "Tabby accept suggestion (<c-g>)", mode = "n" },
      { "<leader>am", "vab", desc = "Match outer block (vab)", mode = "n" },
      { "<leader>at", "vat", desc = "Match outer tag (vat)", mode = "n" },

      { "<leader>di", "<cmd>:Gitsigns preview_hunk_inline<cr>", desc = "Preview hunk inline", mode = "n" },
      { "<leader>dd", "<cmd>:Gitsigns diffthis<cr>", desc = "Diff this", mode = "n" },
      { "<leader>dm", "<cmd>:w !diff % -<cr>", desc = "Diff in-memory changes", mode = "n" },
      { "<leader>db", "<cmd>:BufOnly<cr>", desc = "Close all buffers but current", mode = "n" },
      { "<leader>dm", "<cmd>lua MiniDiff.toggle_overlay()<cr>", desc = "Mini diff inline", mode = "n" },
      { "<leader>dc", "<cmd>:DiffviewClose<cr>", desc = "Diff view close", mode = "n" },
      { "<leader>D", "<cmd>:DiffviewOpen<cr>", desc = "Diff view open", mode = "n" },
      { "<leader>lc", "<cmd>:BufOnly<cr>", desc = "Close all buffers but current", mode = "n" },
      { "<leader>lp", "<cmd>:BufferLineCyclePrev<cr>", desc = "Prev buffer", mode = "n" },
      { "<leader>ln", "<cmd>:BufferLineCycleNext<cr>", desc = "Next buffer", mode = "n" },
      --" { "<leader>U'] = [ ':Gedit HEAD', 'Git walk history (:Gedit HEAD)' ]
      --" { "<leader>l'] = [ ':Telescope', 'Telescope' ]
      --" { "<leader>M'] = [ ':Magit', 'Magit' ]
      --" { "<leader>L'] = [ ':LazyGit', 'Lazy git' ]
      --" { "<leader>PP'] = [ ':Gitsigns preview_hunk', 'Previgitsigns.preview_hunkew hunk (<leader>hp)' ]
      --" { "<leader>nn'] = [ '<S-L>', 'Next buffer (Shift-L)' ]
      --" { "<leader>ff'] = [ ':BLines', 'Filter buffer (:BLines)' ]
      --" { "<leader>kk'] = [ ' k', 'LSP hoover (<leader>k)' ]
      --" { "<leader>ii'] = [ 'gl', 'LSP diagnostic (gl)' ]
      --" { "<leader>VV'] = [ ':BqfToggle', 'Quick view preview toggle (:BqfToggle)' ]
      --" { "<leader>fb'] = [ ':Telescope current_buffer_fuzzy_find', 'Find in current buffer' ]
      --" { "<leader>R'] = [ '@:', 'Repeat last command' ]  {
      --" { "<leader>??'] = [ ':Cheatsheet' , 'cheat' ]
      --" { "<leader>rg'] = [ ':Rg', 'grep text with rg' ]
      { "<leader>S", group = "Spell" }, -- group
      { "<leader>So", "<cmd>:set spell | set spelloptions=camel | :hi spellbad gui=undercurl guibg=#552222 ctermbg=224<cr>", desc = "On", mode = "n" },
      { "<leader>Sx", "<cmd>:set nospell<cr>", desc = "Off", mode = "n" },
      { "<leader>Ss", "z=", desc = "Suggest (z=)", mode = "n" },
      { "<leader>Sa", "zg", desc = "Add to dict (zg)", mode = "n" },

      { "<leader>W", group = "Whitespace" }, -- group
      { "<leader>Ws", "<cmd>:set listchars=space:·,tab:→\\ ,trail:.,precedes:«,extends:»,eol:¶ | :set list<cr>", desc = "Show", mode = "n" },
      { "<leader>Wh", "<cmd>:set listchars& | :set nolist<cr>", desc = "Off", mode = "n" },
      { "<leader>Wt", "<cmd>:set showtabline=0<cr>", desc = "Hide Tabs", mode = "n" },
      { "<leader>Wz", "<cmd>:set showtabline=2<cr>", desc = "Show Tabs", mode = "n" },
      { "<leader>Ww", "<cmd>:set wrap!<cr>", desc = "Toggle Wrap Lines", mode = "n" },
      { "<leader>Wb", "<cmd>:Gitsigns toggle_current_line_blame<cr>", desc = "Toggle line blame", mode = "n" },
      --{ "<leader>k", "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Hover info", mode = "n" },
      { "<leader>kD", "<cmd>lua vim.lsp.buf.declaration()<cr>", desc = "LSP hover info", mode = "n" },
      { "<leader>kd", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "LSP definition", mode = "n" },
      { "<leader>kk", "<cmd>lua vim.lsp.buf.hover()<cr>", desc = "LSP hover", mode = "n" },
      { "<leader>ki", "<cmd>lua vim.lsp.buf.implementation()<cr>", desc = "LSP implementation", mode = "n" },
      { "<leader>ks", "<cmd>lua vim.lsp.buf.signature_help()<cr>", desc = "LSP signature help", mode = "n" },
      { "<leader>kt", "<cmd>lua vim.lsp.buf.type_definition()<cr>", desc = "LSP definition", mode = "n" },
      { "<leader>kn", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "LSP rename", mode = "n" },
      { "<leader>ka", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "LSP code action", mode = "n" },
      { "<leader>kr", "<cmd>lua vim.lsp.buf.references()<cr>", desc = "LSP references", mode = "n" },
      { "<leader>kf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", desc = "LSP format", mode = "n" },
      -- format in visual mode
      { "<leader>kf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", desc = "LSP format", mode = "v" },
      { "<leader>kt", "<cmd>vim.diagnostic.setloclist()<cr>", desc = "Diagnostics", mode = "n" },
    })
    -- remaining lsp-zero keymaps
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', { desc = 'LSP jump to definition' })
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', { desc = 'LSP jump to declaration' })
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', { desc = 'LSP jump to implementation' })
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', { desc = 'LSP jump to type definition' })
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', { desc = 'LSP jump to references' })
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', { desc = 'LSP rename' })
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', { desc = 'LSP code action' })
    vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.config({ virtual_text = true })<cr>', { desc = 'LSP diagnostic virual text' })
  end)
EOF

let g:github_enterprise_urls = ['https://git.autodesk.com']

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif



" " packer plugin manager
" lua << EOF
" local ensure_packer = function()
"   local fn = vim.fn
"   local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
"   if fn.empty(fn.glob(install_path)) > 0 then
"     fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
"     vim.cmd [[packadd packer.nvim]]
"     return true
"   end
"   return false
" end

" local packer_bootstrap = ensure_packer()

" return require('packer').startup(function(use)
"   use 'wbthomason/packer.nvim'
"   -- My plugins here

"   -- Automatically set up your configuration after cloning packer.nvim
"   -- Put this at the end after all plugins
"   if packer_bootstrap then
"     require('packer').sync()
"   end
" end)
" EOF



