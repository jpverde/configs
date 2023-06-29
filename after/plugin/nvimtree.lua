local nvimtree = require("nvim-tree")
local api = require("nvim-tree.api")

nvimtree.setup({
  renderer = {
    icons = {
      show = {
        git = true,
	file = false,
	folder = false,
	folder_arrow = true,
      },
      glyphs = {
        folder = {
          arrow_closed = "⏵",
          arrow_open = "⏷",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "⌥",
          renamed = "➜",
          untracked = "★",
          deleted = "⊖",
          ignored = "◌",
        },
      },
    },
  },
})

vim.keymap.set('n', '<leader>no', function() api.tree.open() end)
vim.keymap.set('n', '<leader>nc', function() api.tree.close() end)

