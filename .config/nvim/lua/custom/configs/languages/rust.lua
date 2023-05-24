local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local opts = {
    tools = {
        executor = require("rust-tools/executors").termopen, -- can be quickfix or termopen
        reload_workspace_from_cargo_toml = true,
        runnables = {
            use_telescope = true,
        },
        inlay_hints = {
            auto = false,
            only_current_line = false,
            show_parameter_hints = false,
            parameter_hints_prefix = "<-",
            other_hints_prefix = "=>",
            max_len_align = false,
            max_len_align_padding = 1,
            right_align = false,
            right_align_padding = 7,
            highlight = "Comment",
        },
        hover_actions = {
            border = "rounded",
        },
        on_initialized = function()
            vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "CursorHold", "InsertLeave" }, {
                pattern = { "*.rs" },
                callback = function()
                    local _, _ = pcall(vim.lsp.codelens.refresh)
                end,
            })
        end,
    },
    server = {
        on_attach = function(client, bufnr)
            on_attach(client, bufnr)
            local rt = require "rust-tools"
            -- Hover actions
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
        end,
        capabilities = capabilities,
        settings = {
            ["rust-analyzer"] = {
                lens = {
                    enable = true,
                },
                check = {
                    enable = true,
                    command = "clippy",
                },
            },
        },
    },
}

return opts
