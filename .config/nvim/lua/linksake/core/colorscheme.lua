local status, andromeda = pcall(require, 'andromeda')
if not status then
  print('Colorscheme "andromeda" not found.')
  return
end

andromeda.setup()

-- local status,_ = pcall(vim.cmd, 'colorscheme slate')
-- if not status then
--   print('Colorscheme "slate" not found.')
--   return
-- end