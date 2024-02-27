return {
    'windwp/nvim-autopairs',
    dependencies = {'hrsh7th/nvim-cmp'},
    config = function()
        require("nvim-autopairs").setup {
            check_ts = true, -- enable treesitter
            ts_config = {
                lua = {"string"}, -- don't enable pairs in Lua string tresitter nodes
                javascript = {"template_string"} -- don't add pairs in JS `template_string` tresitter nodes
            }
        }

        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        local cmp = require("cmp")

        -- automatically open parenthesis after selecting a fn or mthd
        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end
}
