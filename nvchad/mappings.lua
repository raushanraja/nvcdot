
-- lua/custom/mappings

local M = {}



M.general = {
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
  n = {
    -- -- switch between windows
    ["<C-j>"] = { "<C-w>h", "window left" },
    ["<C-;>"] = { "<C-w>l", "window right" },
    ["<C-l>"] = { "<C-w>j", "window down" },
    ["<C-k>"] = { "<C-w>k", "window up" },


    -- save
    ["<leader>w"] = { "<cmd> w <CR>", "save file" },

    -- exit
    ["<A-q>"] = { "<cmd>confirm q<CR>", "Quit"  },
    --
  }
}

M.telescope = {
  plugin = true,
  n = {
    -- find
    ["<leader>fr"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
  },
}

M.nvimtree = {
  plugin = true,
  n = {
    -- toggle
    -- ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },

    -- focus
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
}

-- add this table only when you want to disable default keys
M.disabled = {
  n = {
    ["<C-n>"] = "",
    ["e"] = "",
    --     ["<leader>h"] = "",
    --     ["<C-s>"] = ""
  }
}

-- M.abc = {

--   n = {
--      ["<C-n>"] = {"<cmd> Telescope <CR>", "Open Telescope"}
--   }

--   i = {
--     -- more keys!
--   }
-- }

-- M.xyz = {
--   -- stuff
-- }

return M
