-- plugins/null-ls.lua
return {
  {
    'nvimtools/none-ls.nvim', -- previously null-ls
    config = function()
      local null_ls = require 'null-ls'
      null_ls.setup {
        sources = {
          null_ls.builtins.formatting.black, -- Python
          null_ls.builtins.formatting.prettier, -- JS
          null_ls.builtins.formatting.clang_format, -- C++
        },
      }
    end,
  },
}
