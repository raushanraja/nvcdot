-- lua/custom/mappings
--
--
vim.api.nvim_set_keymap('', 'j', 'h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', ';', 'l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', 'k', 'k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('', 'l', 'j', { noremap = true, silent = true })


-- vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
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
    ["<leader>a"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "add workspace folder",
    },
    ["<leader>wa"] = "",
    ["<leader>wr"] = "",
    ["<leader>wl"] = "",
    ["<leader>wk"] = "",
    ["<leader>wK"] = "",
    ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
    ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
    --     ["<leader>h"] = "",
    --     ["<C-s>"] = ""
  },

  x = {
    ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', opts = { expr = true } },
    ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', opts = { expr = true } },
  },

  whichkey = {
  plugin = true,

  n = {
    ["<leader>wa"] = "",
    ["<leader>wr"] = "",
    ["<leader>wl"] = "",
    ["<leader>wk"] = "",
    ["<leader>wK"] = "",
  },
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
