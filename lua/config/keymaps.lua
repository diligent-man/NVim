--[[
n: Normal mode.
i: Insert mode.
x: Visual mode.
s: Selection mode.
v: Visual + Selection.
t: Terminal mode.
o: Operator-pending.
'': n + v + o.
--]]

-- key notation in nvim
-- :help key-notation

local mapkey = require("utils.keymapper").mapkey



-- Save, Copy, Cut, Paste
-- mapkey("<C_S>", ":w", "")
-- mapkey("<C_c>", "yy", "n")
-- mapkey("<C_X>", "+x", "n")
-- mapkey("<C_v>", "p", "n")

-- Buffer Navigation
-- mapkey("<leader>bn", "bnext", "n") -- Next buffer
-- mapkey("<leader>bp", "bprevious", "n") -- Prev buffer
-- mapkey("<leader>bb", "e #", "n") -- Switch to Other Buffer
-- mapkey("<leader>`", "e #", "n") -- Switch to Other Buffer

-- Directory Navigation
-- mapkey("<leader>m", "NvimTreeFocus", "n")
mapkey("<C-b>", "NvimTreeToggle", "n")

-- Pane and Window Navigation
-- mapkey("<C-h>", "<C-w>h", "n") -- Navigate Left
-- mapkey("<C-j>", "<C-w>j", "n") -- Navigate Down
-- mapkey("<C-k>", "<C-w>k", "n") -- Navigate Up
-- mapkey("<C-l>", "<C-w>l", "n") -- Navigate Right
-- mapkey("<C-h>", "wincmd h", "t") -- Navigate Left
-- mapkey("<C-j>", "wincmd j", "t") -- Navigate Down
-- mapkey("<C-k>", "wincmd k", "t") -- Navigate Up
-- mapkey("<C-l>", "wincmd l", "t") -- Navigate Right
-- mapkey("<C-h>", "TmuxNavigateLeft", "n") -- Navigate Left
-- mapkey("<C-j>", "TmuxNavigateDown", "n") -- Navigate Down
-- mapkey("<C-k>", "TmuxNavigateUp", "n") -- Navigate Up
-- mapkey("<C-l>", "TmuxNavigateRight", "n") -- Navigate Right

-- Window Management
mapkey("<leader>sv", "vsplit", "n") -- Split Vertically
mapkey("<leader>sh", "split", "n") -- Split Horizontally
-- mapkey("<leader>sm", "MaximizerToggle", "n") -- Toggle Minimise

-- Indenting
-- mapkey("<", "v", "<gv") -- Shift Indentation to Left
-- mapkey(">", "v", ">gv") -- Shift Indentation to Right

-- Show Full File-Path
mapkey("<leader>pa", "echo expand('%:p')", "n") -- Show Full File Path

-- Comments
-- vim.api.nvim_set_keymap("n", "<C-_>", "gtc", {noremap = false})
-- vim.api.nvim_set_keymap("v", "<C-_>", "goc", {noremap = false})