-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
-- local opts = { silent = true }

-- Move to window using the <ctrl> arrow keys
map("n", "<C-Up>", "<C-w>k", { desc = "Go to Left Window", remap = true })
map("n", "<C-Down>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-Left>", "<C-w>h", { desc = "Go to Upper Window", remap = true })
map("n", "<C-Right>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Resize window using <ctrl> hjkl keys
map("n", "<C-h>", "<cmd>resize +2<cr>", { desc = "Increase Window Height", remap = true })
map("n", "<C-j>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height", remap = true })
map("n", "<C-k>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width", remap = true })
map("n", "<C-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width", remap = true })

-- Change buffers (tabs)
map("n", "<A-Left>", "<cmd>bprevious<cr>", { desc = "Prev Buffer", remap = true })
map("n", "<A-Right>", "<cmd>bnext<cr>", { desc = "Next Buffer", remap = true })

-- Move Lines
map("n", "<A-Down>", "<cmd>m .+1<cr>==", { desc = "Move Down", remap = true })
map("n", "<A-Up>", "<cmd>m .-2<cr>==", { desc = "Move Up", remap = true })
map("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down", remap = true })
map("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up", remap = true })

-- Append line below to the end of the current line
map("n", "<S-Up>", "J", { desc = "Append Up", remap = true })

-- View definition
map("n", "<S-Down>", "K", { desc = "View definition", remap = true })

-- Change 2 tabs to 4
map(
    "n",
    "<leader>ci",
    [[:%s/^\(  \)\+/\=repeat(' ', len(submatch(0)) * 2)/g<CR>]],
    { noremap = true, silent = true, desc = "Increase tab size" }
)
