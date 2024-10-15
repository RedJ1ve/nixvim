{ pkgs, ... }: {
  extraPlugins = with pkgs.vimPlugins; [
    quarto-nvim
  ];

  extraConfigLua = ''
    require("quarto").setup({
   	  lspFeatures = {
  	    languages = { "python" },
  	    chunks = "all",
  	    diagnostics = {
  	      enable = true,
  	  	  triggers = { "BufWritePost" },
  	  	},
  	  	completion = {
  	  	  enabled = true,
  	  	},
  	 },
  	 keymap = {
  	   hover = "H",
  	   definition = "gd",
  	   rename = "<leader>rn",
  	   references = "gr",
  	   format = "<leader>gf",
  	  },
  	  codeRunner = {
  	    enable = true,
  	    default_method = "molten",
  	  },
  	})
  '';

  keymaps = [
    {
      action = "<cmd>lua require('quarto.runner').run_cell()<CR>";
      key = "<leader>rc";  # This will be <Comma>rc
      options = { silent = true; desc = "run cell"; };
      mode = ["n"];
    }
    {
      action = "<cmd>lua require('quarto.runner').run_above()<CR>";
      key = "<leader>ra";  # This will be <Comma>ra
      options = { silent = true; desc = "run cell and above"; };
      mode = ["n"];
    }
    {
      action = "<cmd>lua require('quarto.runner').run_all()<CR>";
      key = "<leader>rA";  # This will be <Comma>rA
      options = { silent = true; desc = "run all cells"; };
      mode = ["n"];
    }
    {
      action = "<cmd>lua require('quarto.runner').run_line()<CR>";
      key = "<leader>rl";  # This will be <Comma>rl
      options = { silent = true; desc = "run line"; };
      mode = ["n"];
    }
    {
      action = "<cmd>lua require('quarto.runner').run_range()<CR>";
      key = "<leader>r";  # This will be <Comma>r in visual mode
      options = { silent = true; desc = "run visual range";};
      mode = [ "v" ];
    }
    {
      action = "<cmd>lua function() require('quarto.runner').run_all(true) end<CR>";
      key = "<leader>RA";  # This will be <Comma>RA
      options = { silent = true; desc = "run all cells of all languages"; };
      mode = ["n"];
    }
  ];

  extraFiles = {
   "ftplugin/markdown.lua".text = ''
     require("quarto").activate()
   '';
  };
}
