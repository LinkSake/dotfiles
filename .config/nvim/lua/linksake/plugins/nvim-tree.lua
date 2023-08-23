local setup, nvimtree = pcall(require, 'nvim-tree')
if not setup then
  return
end

-- recommended settings from nvim-tree docs
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
  hijack_cursor = true,
  view = {
    width = '300',
    side = 'right'
  },
  renderer = {
    add_trailing = true,
    group_empty = true,
    highlight_opened_files = 'name',
    special_files = {
      'Cargo.toml',
      'Makefile',
      'README.md',
      'readme.md',
      'Gemfile',
      'Gemfile.lock',
      'package.json',
      'package-lock.json',
      'Dockerfile',
      'docker-compose.yaml',
      'docker-compose.yml',
      '.gitignore'
    }
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      }
    }
  },
  filters = {
    dotfiles = true,
    git_clean = true
  },
   actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  }
})
