local null_ls = require "null-ls"
local formatting = null_ls.builtins.formatting

local sources = {
    -- webdev stuff
    formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
    formatting.prettier.with {
        filetypes = {
            "javascript",
            "typescript",
            "javascriptreact",
            "typescriptreact",
            "css",
            "svelte",
            "astro",
        },
    }, -- so prettier works only on these filetypes

    -- cpp
    formatting.clang_format,

    -- golang
    formatting.gofumpt,
    formatting.goimports,
}

null_ls.setup {
    debug = true,
    sources = sources,
}
