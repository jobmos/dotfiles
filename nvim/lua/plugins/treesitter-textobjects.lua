return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  branch = "main",
  init = function()
    vim.g.no_plugin_maps = true
  end,
  config = function()
    require("nvim-treesitter-textobjects").setup({
      select = {
        lookahead = true,
        selection_modes = {  -- "V" is linewise select
          ["@function.outer"] = "V",
          ["@function.inner"] = "V",
          ["@class.outer"] = "V",
          ["@class.inner"] = "V",
        },
      },
    })

    vim.keymap.set({ "x", "o" }, "af", function()
      require("nvim-treesitter-textobjects.select").select_textobject("@function.outer", "textobjects")
    end, { desc = "Select outer function" })

    vim.keymap.set({ "x", "o" }, "if", function()
      require("nvim-treesitter-textobjects.select").select_textobject("@function.inner", "textobjects")
    end, { desc = "Select inner function" })

    vim.keymap.set({ "x", "o" }, "ac", function()
      require("nvim-treesitter-textobjects.select").select_textobject("@class.outer", "textobjects")
    end, { desc = "Select outer class" })

    vim.keymap.set({ "x", "o" }, "ic", function()
      require("nvim-treesitter-textobjects.select").select_textobject("@class.inner", "textobjects")
    end, { desc = "Select inner class" })
  end,
}
