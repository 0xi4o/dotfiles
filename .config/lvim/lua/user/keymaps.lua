lvim.leader = "space"

lvim.keys.normal_mode["<leader>y"] = '"+y'
lvim.keys.visual_mode["<leader>y"] = '"+y'
lvim.keys.normal_mode["<leader>Y"] = '"+Y'

lvim.keys.normal_mode["<leader>x"] = "<cmd>silent !chmod +x %<CR>"
lvim.keys.normal_mode["<C-f>"] = "<cmd>silent !tmux neww ~/.local/bin/tmux-sessionizer<CR>"

lvim.keys.normal_mode["<leader>nf"] = ":NvimTreeFocus<CR>"

lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<leader><leader>"] = ":Telescope buffers<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

lvim.keys.normal_mode["<leader>t"] = "<cmd>TroubleToggle<CR>"
lvim.keys.normal_mode["<leader>o"] = "<cmd>SymbolsOutline<CR>"
-- lvim.keys.normal_mode["<C-x>"] = "<cmd>ZenMode<CR>"

lvim.keys.normal_mode["<leader>lp"] = ":require('pretty_hover').hover()<CR>"
