local status,_ = pcall(vim.cmd, 'colorscheme slate')
if not status then
  print('Colorscheme "slate" not found.')
  return
end
