-- greeter
lvim.builtin.alpha.dashboard.section.header.val = {
  "░░ ░░   ░░  ░░░░░░ ",
  "▒▒ ▒▒   ▒▒ ▒▒    ▒▒",
  "▒▒ ▒▒▒▒▒▒▒ ▒▒    ▒▒",
  "▓▓      ▓▓ ▓▓    ▓▓",
  "██      ██  ██████ ",
}

lvim.log.level = "warn"
lvim.colorscheme = "tokyonight-night"

lvim.builtin.alpha.active = true
lvim.reload_config_on_save = true
lvim.builtin.illuminate.active = false
-- lvim.builtin.bufferline.active = false
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.builtin.breadcrumbs.active = true
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.dap.active = true
lvim.format_on_save.enabled = true
lvim.transparent_window = false
lvim.builtin.terminal.active = true

reload "user.autocommands"
reload "user.copilot"
reload "user.fidget"
reload "user.functions"
reload "user.inlay-hints"
reload "user.lsp"
reload "user.lualine"
reload "user.keymaps"
reload "user.options"
reload "user.plugins"
reload "user.signature"
reload "user.telescope"
reload "user.treesitter"
reload "user.whichkey"
reload "user.zen-mode"
