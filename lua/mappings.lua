require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- general
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- substitute content with space + s
map("n", "<leader>y", [["+y]]) -- yank into system clipboard
map("n", "<leader>d", [["_d]]) -- black hole register
map("n", "J", "mzJ`z") -- press J and won't change your cursor location
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv") -- make your cursor in the middle screen when search
map("n", "N", "Nzzzv") -- make your cursor in the middle screen when search
map("n", "j", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
map("n", "k", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })
map("n", "<leader>b", "<cmd> enew <CR>") -- new buffer

-- telescope
map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files() <CR>")
map("n", "<leader>fg", "<cmd> Telescope live_grep <CR>")
map("n", "<leader>fb", "<cmd> Telescope buffers <CR>")
map("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>")
map("n", "<leader>fz", "<cmd> Telescope current_buffer_fuzzy_find <CR>")

-- git(telescope)
map("n", "<leader>gc", "<cmd> Telescope git_commits <CR>")
map("n", "<leader>gt", "<cmd> Telescope git_status <CR>")
map("n", "<leader>ma", "<cmd> Telescope marks <CR>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
