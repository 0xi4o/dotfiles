local overrides = require "custom.configs.overrides"


---@type NvPluginSpec[]
local plugins = {

    -- Override plugin definition options

    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end, -- Override to setup mason-lspconfig
    },
    {
        "numToStr/Comment.nvim",
        -- keys = { "gc", "gb" },
        init = function()
            require("core.utils").load_mappings "comment"
        end,
        config = function()
            require("Comment").setup {
                pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook()
            }
        end,
    },

    -- format & linting
    {
        "jose-elias-alvarez/null-ls.nvim",
        lazy = false,
        config = function()
            require "custom.configs.null-ls"
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        lazy = false,
        cmd = "Telescope",
        init = function()
            require("core.utils").load_mappings "telescope"
        end,

        opts = function()
            local opts = require "custom.configs.telescope"
            return opts
        end,

        config = function(_, opts)
            dofile(vim.g.base46_cache .. "telescope")
            local telescope = require "telescope"
            telescope.setup(opts)

            -- load extensions
            for _, ext in ipairs(opts.extensions_list) do
                telescope.load_extension(ext)
            end

            -- prevent insert mode when opening files from telescopne
            local original_edit = require("telescope.actions.set").edit
            require("telescope.actions.set").edit = function(...)
                original_edit(...)
                vim.cmd.stopinsert()
            end
        end,
    },

    -- override plugin configs
    {
        "williamboman/mason.nvim",
        lazy = false,
        opts = overrides.mason,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        dependencies = 'JoosepAlviste/nvim-ts-context-commentstring',
        opts = overrides.treesitter,
    },

    {
        "nvim-tree/nvim-tree.lua",
        lazy = false,
        opts = overrides.nvimtree,
    },

    -- To make a plugin not be loaded
    {
        "NvChad/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup {
                filetypes = {
                    "typescript",
                    "typescriptreact",
                    "javascript",
                    "javascriptreact",
                    "css",
                    "html",
                    "astro",
                    "lua",
                },
                user_default_options = {
                    rgb_fn = true,
                    tailwind = "both",
                },
                buftypes = {
                    -- '*', -- seems like this doesn't work with the float window, but works with the other `buftype`s.
                    -- Not sure if the window has a `buftype` at all
                },
            }
        end,
    },
    {
        "folke/todo-comments.nvim",
        event = "BufRead",
        config = function()
            require("todo-comments").setup()
        end,
    },
    {
        "folke/trouble.nvim",
        dependencies = "nvim-tree/nvim-web-devicons",
    },
    {
        "simrat39/rust-tools.nvim",
        dependencies = "neovim/nvim-lspconfig",
        event = { "BufEnter *.rs" },
        config = function()
            local opts = require "custom.configs.languages.rust"
            require("rust-tools").setup(opts)
        end
    },
    {
        "saecki/crates.nvim",
        version = "v0.3.0",
        event = { "BufRead Cargo.toml" },
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("crates").setup {
                null_ls = {
                    enabled = true,
                    name = "crates.nvim",
                },
                popup = {
                    border = "rounded",
                },
            }
        end,
    },
    {
        "lvimuser/lsp-inlayhints.nvim",
        dependencies = "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            require "custom.configs.inlay-hints"
        end
    },
    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup()
        end,
    },
    {
        "roobert/tailwindcss-colorizer-cmp.nvim",
        -- optionally, override the default options:
        config = function()
            require("tailwindcss-colorizer-cmp").setup {
                color_square_width = 2,
            }
        end,
    },
    {
        "wakatime/vim-wakatime",
        lazy = false,
    },
    {
        "nvim-lua/plenary.nvim",
        lazy = false,
    },
    {
        "mfussenegger/nvim-dap",
    },
    {
        "pwntester/octo.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("octo").setup()
        end,
    },
    {
        "github/copilot.vim",
    },
    {
        "ray-x/lsp_signature.nvim",
    },
}

return plugins
