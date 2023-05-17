reload "user.lsp.languages.rust"
reload "user.lsp.languages.golang"
reload "user.lsp.languages.sh"
reload "user.lsp.languages.js-ts"

-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "rust_analyzer", "gopls", "bashls", "tsserver" })

-- -- make sure server will always be installed even if the server is in skipped_servers list
lvim.lsp.installer.setup.ensure_installed = {
  "astro",
  "cssls",
  "eslint",
  "gopls",
  "jsonls",
  "tsserver",
  "rust_analyzer",
  "tailwindcss",
}

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = {
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "css",
      "svelte",
      "astro",
    },
  },
  { command = "goimports", filetypes = { "go" } },
  { command = "gofumpt", filetypes = { "go" } },
  { command = "shfmt", filetypes = { "sh", "zsh", "bash" } },
  { command = "stylua", filetypes = { "lua" } },
  --   { command = "black", filetypes = { "python" } },
  --   { command = "isort", filetypes = { "python" } },
  --   {
  --     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
  --     command = "prettier",
  --     ---@usage arguments to pass to the formatter
  --     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
  --     extra_args = { "--print-with", "100" },
  --     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
  --     filetypes = { "typescript", "typescriptreact" },
  --   },
}
