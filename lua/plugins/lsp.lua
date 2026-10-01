return {
    {
        "mason-org/mason.nvim",
        opts = {},
    },

    {
        "neovim/nvim-lspconfig",

        config = function()
            -- Lua
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        },
                        workspace = {
                            library = {
                                vim.env.VIMRUNTIME,
                            },
                        },
                    },
                },
            })

            -- C / C++
            vim.lsp.config("clangd", {
                cmd = {
                    "clangd",
                    "--query-driver=/home/arvyd/.platformio/packages/toolchain-gccarmnoneeabi-teensy/bin/arm-none-eabi-g++",
                },
            })

            vim.lsp.enable("lua_ls")
            vim.lsp.enable("clangd")
            vim.lsp.enable({
                            "pylsp",
                            "ts_ls",
                            "rust_analyzer",
                            "gopls",
                            "zls",
                            "jdtls",
                            "texlab",
                        })


        end,
    },
}
