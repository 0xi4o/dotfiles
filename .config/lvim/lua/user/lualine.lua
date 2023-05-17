-- lualine
lvim.builtin.lualine.options = {
  icons_enabled = true,
  theme = "tokyonight",
  component_separators = { left = "", right = "" },
  section_separators = { left = "", right = "" },
  disabled_filetypes = {},
  always_divide_middle = true,
  globalstatus = false,
}
lvim.builtin.lualine.sections = {
  lualine_a = { "mode" },
  lualine_b = { "branch", "diff", "diagnostics" },
  lualine_c = { "filename" },
  lualine_x = { "encoding" },
  lualine_y = { "fileformat", "filetype" },
  lualine_z = { "location" },
}
lvim.builtin.lualine.inactive_sections = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = { "filename" },
  lualine_x = { "location" },
  lualine_y = {},
  lualine_z = {},
}
lvim.builtin.lualine.tabline = {}
lvim.builtin.lualine.extensions = {}
