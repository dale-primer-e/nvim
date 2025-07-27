return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  opts = {
    -- Opts here
  },
  config = function()
    require("neo-tree").setup({
      event_handlers = {
        {
          event = "file_opened",
          handler = function(file_path)
            print("Opened file: " .. file_path)
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
    })

    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<cr>", { desc = "Open file tree on the left" })
    vim.keymap.set(
      "n",
      "<C-b>",
      ":Neotree buffers reveal float<cr>",
      { desc = "Open buffers list in floating window" }
    )
  end,
}
