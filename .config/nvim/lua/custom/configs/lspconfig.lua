local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "astro", "cssls", "eslint", "gopls", "jsonls", "rust_analyzer", "tailwindcss" }

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end

-- lua
lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            hint = {
                enable = true
            }
        }
    }
}
--
-- tsserver
lspconfig.tsserver.setup {
    -- disable_commands = false, -- prevent the plugin from creating Vim commands
    debug = false,   -- enable debug logging for commands
    go_to_source_definition = {
        fallback = true, -- fall back to standard LSP definition on failure
    },
    server = {
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
            typescript = {
                inlayHints = {
                    includeInlayConstantValueHints = true,
                    includeInlayEnumMemberValueHints = true,
                    includeInlayFunctionLikeReturnTypeHints = true,
                    includeInlayFunctionParameterTypeHints = false,
                    includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
                    includeInlayParameterNameHintsWhenArgumentMatchesName = true,
                    includeInlayPropertyDeclarationTypeHints = true,
                    includeInlayVariableTypeHints = true,
                },
            },
        },
    },
}

-- TODO: Set up for gopls
