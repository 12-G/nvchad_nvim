-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "gruvchad",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },

  -- integrations = {
  --   "cmp",
  --   "lsp",
  --   "mason",
  --   "notify",
  --   "devicons",
  --   "nvimtree",
  --   "whichkey",
  --   "telescope",
  -- },
}

M.ui = {
  statusline = {
    theme = "default",
  },
}

M.mason = {
  pkgs = {
    -- LSP
    "basedpyright",
    "bash-language-server",
    "lua-language-server",
    "clangd",

    -- DAP
    "debugpy",

    -- Formatters
    "stylua",
    "black",
    "isort",
  },
}

M.lsp = {
  signature = false,
}

return M
