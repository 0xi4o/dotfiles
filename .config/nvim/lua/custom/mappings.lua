---@type MappingsTable
local M = {}

M.general = {
    n = {
        [";"] = { ":", "enter command mode", opts = { nowait = true } },
        ["<leader>cx"] = { "<cmd>silent !chmod +x %<CR>", "make file executable" },
        ["<leader>sf"] = { "<cmd>silent !tmux neww ~/.local/bin/tmux-sessionizer<CR>", "tmux sessionizer" },
        ["<leader>ft"] = {
            function()
                vim.lsp.buf.format { async = true }
            end,
            "lsp formatting",
        },
    },
}

return M
