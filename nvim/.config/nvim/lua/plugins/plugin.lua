return {

	-- Makes Neovim background transparent
	{ 
		"xiyaowong/transparent.nvim",
		lazy = false,
		priority = 1000,
    },

    -- Colorizer
    {
        "catgoose/nvim-colorizer.lua",
        event = "BufReadPre",
        opts = { -- set to setup table
        },
    },

	-- Command Auto-Completer
	{   
		"gelguy/wilder.nvim",
		lazy = false,
		build = ":UpdateRemotePlugins",
		config = function()
			-- Basic wilder.nvim setup
			require('wilder').setup({modes = {':', '/', '?'}})
			-- You can add more configuration here
		end,
	},

	-- Telescope fuzzy finder
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"debugloop/telescope-undo.nvim",
		},
		-- Replacing telescope remaps with the required ones
		keys = function()
			return {
				{"<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files"},
				{"<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep"},
				{"<leader>fu", "<cmd>Telescope undo<cr>", desc = "Undo"},
			}
		end
	},

    -- File picker
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        cmd = { "NvimTreeToggle", "NvimTreeFocus" },
        opts = function()
            return require "karadi.configs.nvimtree"
        end,
    },

	-- Colorscheme
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end
	},

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate", -- ensures parsers are updated after install/update
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "lua", "python", "c", "javascript" }, -- add languages you want
				highlight = { enable = true },
				indent = { enable = true },
				-- Add other modules and options here if needed
			})
        end,
    },
    
    -- Language parser or something
    { "mason-org/mason.nvim" },

    -- Character autopairs
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
}
