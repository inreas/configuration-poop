-- General mappings
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>")
vim.keymap.set("n", "<C-c>", "<cmd> %y+ <CR>")

-- nvimtree
vim.keymap.set("n", "<C-n>", "<cmd> NvimTreeToggle <CR>")
vim.keymap.set("n", "<C-h>", "<cmd> NvimTreeFocus <CR>")

-- Bufferline, cycle buffers
vim.keymap.set("n", "<Tab>", "<cmd> BufferLineCycleNext <CR>")
vim.keymap.set("n", "<S-Tab>", "<cmd> BufferLineCyclePrev <CR>")
vim.keymap.set("n", "<C-q>", "<cmd> bd <CR>")

-- Comments
vim.keymap.set("n", "<leader>/", "gcc", { remap = true })
vim.keymap.set("v", "<leader>/", "gcc", { remap = true })
