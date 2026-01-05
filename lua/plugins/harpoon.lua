return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function ()
      local harpoon = require("harpoon")
      harpoon:setup()

      require("telescope").load_extension("harpoon")

      -- Add file
      vim.keymap.set("n", "<leader>a", function()
        harpoon:list():add()
      end, { desc = "Harpoon add file" })

      -- Open harpoon with telescope
      vim.keymap.set("n", "<leader>fh", function()
        require("telescope").extensions.harpoon.marks({
        list = harpoon:list(),
        })
      end, { desc = "Harpoon (Telescope)" })
      --
      -- Clear the harpoon list
      vim.keymap.set("n", "<leader>hc", function()
        harpoon:list():clear()
      end, { desc = "Harpoon clear list" })

      -- Quick jumps
      vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
      vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
      vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
      vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
      vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end)

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
      vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
    end
	},
}
