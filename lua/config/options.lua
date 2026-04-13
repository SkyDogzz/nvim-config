-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local function set_transparent_bg()
  local transparent = { bg = "none" }
  local transparent_keep_fg = { bg = "none", ctermbg = "none" }

  -- Core UI
  vim.api.nvim_set_hl(0, "Normal", transparent)
  vim.api.nvim_set_hl(0, "NormalNC", transparent)
  vim.api.nvim_set_hl(0, "NormalFloat", transparent)
  vim.api.nvim_set_hl(0, "FloatBorder", transparent)
  vim.api.nvim_set_hl(0, "SignColumn", transparent)
  vim.api.nvim_set_hl(0, "EndOfBuffer", transparent_keep_fg)

  -- Common plugin windows
  vim.api.nvim_set_hl(0, "TelescopeNormal", transparent)
  vim.api.nvim_set_hl(0, "TelescopeBorder", transparent)
  vim.api.nvim_set_hl(0, "Pmenu", transparent)
  vim.api.nvim_set_hl(0, "PmenuSbar", transparent)
  vim.api.nvim_set_hl(0, "PmenuThumb", transparent)
end

vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("user_transparent_bg", { clear = true }),
  callback = set_transparent_bg,
})

-- Apply immediately on startup as well to avoid a late flicker.
set_transparent_bg()
