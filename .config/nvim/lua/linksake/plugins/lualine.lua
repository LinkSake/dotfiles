local status, lualine = pcall(require, 'lualine')
if not status then
  return
end

local andromeda_lualine = require('andromeda.plugins.lualine')

lualine.setup({
  options = {
    icons_enabled = true,
    theme = andromeda_lualine.theme,
    section_separators = '',
    component_separators = '',
  },
    sections = andromeda_lualine.sections,
    inactive_sections = andromeda_lualine.inactive_sections,
})
