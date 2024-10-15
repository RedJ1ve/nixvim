{ pkgs, ... }: {
  extraPackages = with pkgs; [
  	chafa
  ];

  plugins.alpha = {
   	enable = true;

   	layout = let
      padding = val: {
       	type = "padding";
       	inherit val;
      };
   	in [
  	  (padding 4)
   	  {
   	  	type = "terminal";
   	  	command = "chafa --symbols sextant --scale max --clear  --align top,center ${./alpha.gif}";
   	  	width = 70;
   	  	height = 22;
   	  	opts = {
   	  	  position = "center";
   	  	  redraw = true;
   	  	};
   	  }
   	  (padding 4)
      {
        type = "button";
        val = "  Find File";
        on_press = {
          __raw = "function() require('telescope.builtin').find_files() end";
        };
        opts = {
          # hl = "comment";
          keymap = [
            "n"
            "f"
            ":Telescope find_files <CR>"
            {
              noremap = true;
              silent = true;
              nowait = true;
            }
          ];
          shortcut = "f";

          position = "center";
          cursor = 3;
          width = 38;
          align_shortcut = "right";
          hl_shortcut = "Keyword";
        };
      }
      (padding 1)
      {
        type = "button";
        val = "  New File";
        on_press = {
          __raw = "function() vim.cmd[[ene]] end";
        };
        opts = {
          # hl = "comment";
          keymap = [
            "n"
            "n"
            ":ene <BAR> startinsert <CR>"
            {
              noremap = true;
              silent = true;
              nowait = true;
            }
          ];
          shortcut = "n";
          position = "center";
          cursor = 3;
          width = 38;
          align_shortcut = "right";
          hl_shortcut = "Keyword";
        };
      }
      (padding 1)
      {
        type = "button";
        val = "󰈚  Recent Files";
        on_press = {
          __raw = "function() require('telescope.builtin').oldfiles() end";
        };
        opts = {
          # hl = "comment";
          keymap = [
            "n"
            "r"
            ":Telescope oldfiles <CR>"
            {
              noremap = true;
              silent = true;
              nowait = true;
            }
          ];
          shortcut = "r";
          position = "center";
          cursor = 3;
          width = 38;
          align_shortcut = "right";
          hl_shortcut = "Keyword";
        };
      }
      (padding 1)
      {
        type = "button";
        val = "  NixOS";
        on_press = {
          __raw = "function() vim.cmd[[e]] end";
        };
        opts = {
          # hl = "comment";
          keymap = [
            "n"
            "c"
            ":e /etc/nixos <CR>"
            {
              noremap = true;
              silent = true;
              nowait = true;
            }
          ];
          shortcut = "c";
          position = "center";
          cursor = 3;
          width = 38;
          align_shortcut = "right";
          hl_shortcut = "Keyword";
        };
      }
      (padding 1)
      {
        type = "button";
        val = "  Restore Session";
        on_press = {
          __raw = "function() require('persistence').load() end";
        };
        opts = {
          # hl = "comment";
          keymap = [
            "n"
            "s"
            ":lua require('persistence').load()<cr>"
            {
              noremap = true;
              silent = true;
              nowait = true;
            }
          ];
          shortcut = "s";
          position = "center";
          cursor = 3;
          width = 38;
          align_shortcut = "right";
          hl_shortcut = "Keyword";
        };
      }
      (padding 1)
      {
        type = "button";
        val = "  Quit Neovim";
        on_press = {
          __raw = "function() vim.cmd[[qa]] end";
        };
        opts = {
          # hl = "comment";
          keymap = [
            "n"
            "q"
            ":qa<CR>"
            {
              noremap = true;
              silent = true;
              nowait = true;
            }
          ];
          shortcut = "q";
          position = "center";
          cursor = 3;
          width = 38;
          align_shortcut = "right";
          hl_shortcut = "Keyword";
        };
        }
        (padding 4)
  	];
  };
}
