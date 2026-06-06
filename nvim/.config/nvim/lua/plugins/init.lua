-- lua/plugins/init.lua
return {
	{
		"williamboman/mason.nvim",
		config = function()
		require("mason").setup()
		end
	},
  -- LSP + autocomplete
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    config = function()
      require("plugins.lsp")
	 require("plugins.cmp")
    end
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("plugins.treesitter")
    end
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugins.telescope")
    end
  },
	-- NvimTree
{
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("plugins.nvimtree")
  end
},

  -- Gitsigns
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("plugins.gitsigns")
    end
  },

  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("plugins.statusline")
    end
  },

  -- Comment plugin
  {
    "numToStr/Comment.nvim",
    config = function()
      require("plugins.comment")
    end
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        contrast = "soft",
        transparent_mode = true,
      })
      vim.cmd.colorscheme("gruvbox")

      -- ensure full transparency
      vim.cmd [[
        hi Normal guibg=NONE ctermbg=NONE
        hi NormalNC guibg=NONE ctermbg=NONE
        hi NormalFloat guibg=NONE ctermbg=NONE
        hi EndOfBuffer guibg=NONE ctermbg=NONE
      ]]
    end
  },
  {
	"ThePrimeagen/vim-be-good",
  },
  {
	'windwp/nvim-autopairs',
	config = function()
		require('nvim-autopairs').setup{}
	end
  },
	{
	 "iamcco/markdown-preview.nvim",
	 cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	 build = "cd app && yarn install",
	 init = function()
	   vim.g.mkdp_filetypes = { "markdown" }
	 end,
	 ft = { "markdown" },
	},
	{
		"ThePrimeagen/99",
		config = function()
			require("plugins.99")
		end,
	},
}
