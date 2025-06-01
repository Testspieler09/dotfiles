return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup {}
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = '[A]dd buffer to harpoon' })

    vim.keymap.set('n', '<leader>e1', function()
      harpoon:list():select(1)
    end, { desc = 'Jump to harpoon buffer [1]' })
    vim.keymap.set('n', '<leader>e2', function()
      harpoon:list():select(2)
    end, { desc = 'Jump to harpoon buffer [2]' })
    vim.keymap.set('n', '<leader>e3', function()
      harpoon:list():select(3)
    end, { desc = 'Jump to harpoon buffer [3]' })
    vim.keymap.set('n', '<leader>e4', function()
      harpoon:list():select(4)
    end, { desc = 'Jump to harpoon buffer [4]' })
    vim.keymap.set('n', '<leader>e5', function()
      harpoon:list():select(5)
    end, { desc = 'Jump to harpoon buffer [5]' })
    vim.keymap.set('n', '<leader>e6', function()
      harpoon:list():select(6)
    end, { desc = 'Jump to harpoon buffer [6]' })
    vim.keymap.set('n', '<leader>e7', function()
      harpoon:list():select(7)
    end, { desc = 'Jump to harpoon buffer [7]' })
    vim.keymap.set('n', '<leader>e8', function()
      harpoon:list():select(8)
    end, { desc = 'Jump to harpoon buffer [8]' })
    vim.keymap.set('n', '<leader>e9', function()
      harpoon:list():select(9)
    end, { desc = 'Jump to harpoon buffer [9]' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<leader>ep', function()
      harpoon:list():prev()
    end, { desc = 'Toggle [P]revious harpoon buffer' })
    vim.keymap.set('n', '<leader>en', function()
      harpoon:list():next()
    end, { desc = 'Toggle [N]ext harpoon buffer' })
  end,
}
