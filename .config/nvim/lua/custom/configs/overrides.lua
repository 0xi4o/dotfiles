local M = {}

M.treesitter = {
    ensure_installed = {
        "astro",
        "bash",
        "c",
        "cpp",
        "css",
        "go",
        "html",
        "http",
        "javascript",
        "json",
        "latex",
        "lua",
        "markdown",
        "markdown_inline",
        "prisma",
        "python",
        "rust",
        "toml",
        "tsx",
        "typescript",
        "yaml",
        "vim",
        "vimdoc",
    },
    indent = {
        enable = true,
        -- disable = {
        --   "python"
        -- },
    },
}

M.mason = {
    ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",
        "luacheck",

        -- web dev stuff
        "astro-language-server",
        "css-lsp",
        "deno",
        "eslint-lsp",
        "eslint_d",
        "html-lsp",
        "json-lsp",
        "jsonlint",
        "prettier",
        "svelte-language-server",
        "tailwindcss-language-server",
        "typescript-language-server",

        -- c/cpp stuff
        "clangd",
        "clang-format",

        -- rust stuff
        "rust-analyzer",
        "rustfmt",

        -- go
        "gopls",
        "gofumpt",
        "goimports",

        -- markdown
        "marksman",
        "markdownlint",
        "remark-language-server",

        -- other stuff
        "yaml-language-server",
    },
}

-- git support in nvimtree
M.nvimtree = {
    git = {
        enable = true,
    },

    renderer = {
        highlight_git = true,
        icons = {
            show = {
                git = true,
            },
        },
    },

    view = {
        side = "right",
    },
}

return M
