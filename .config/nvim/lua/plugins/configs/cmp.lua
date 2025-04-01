local cmp = require "cmp"

return {
    mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<Esc>"] = cmp.mapping.abort(),
        ["<Tab>"] = cmp.mapping.confirm({ select = true })
    }),

    sources = cmp.config.sources({
        { name = "luasnip" },
        { name = "buffer" },
        { name = "nvim_lua" },
        { name = "path" }
    })
}
