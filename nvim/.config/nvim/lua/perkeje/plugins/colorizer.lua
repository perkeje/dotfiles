return {
    {
        "catgoose/nvim-colorizer.lua",
        event = "VeryLazy",
        config = function()
            require("colorizer").setup({
                lazy_load = true,            -- Lazily schedule buffer highlighting
                user_default_options = {
                    tailwind = "both",       -- Enable Tailwind colors for both normal and LSP integrations
                    tailwind_opts = {
                        update_names = true, -- Update Tailwind names from LSP results if available
                    },
                },
            })
        end,
    },
    {
        "roobert/tailwindcss-colorizer-cmp.nvim",
        -- optionally, override the default options:
        config = function()
            require("tailwindcss-colorizer-cmp").setup({
                color_square_width = 2,
            })
        end
    }
}
