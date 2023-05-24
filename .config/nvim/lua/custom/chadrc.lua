---@type ChadrcConfig
local M = {}
M.ui = {
    nvdash = {
        load_on_startup = true
    },
    statusline = {
        theme = 'vscode_colored',
    },
    telescope = {
        style = 'bordered',
    },
    theme = 'tokyodark',
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
