return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            }, }

        vim.keymap.set("n", "<C-b>", "<cmd>NvimTreeToggle<CR>",
            { noremap = true, silent = true, desc = "Toggle Nvim Tree" })
    end,

    enabled = false
}
