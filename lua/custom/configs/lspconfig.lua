local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "clangd", "pylsp", "jdtls"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

--lspconfig.rust_analyzer.setup({
--  on_attach = on_attach,
--  settings = {
--    ["rust-analyzer"] = {
--      imports = {
--          granularity = {
--              group = "module",
--          },
--          prefix = "self",
--      },
--      cargo = {
--          buildScripts = {
--              enable = true,
--          },
--      },
--      procMacro = {
--          enable = true
--      },
--    }
--  }
--})

-- 
-- lspconfig.pyright.setup { blabla}
