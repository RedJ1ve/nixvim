{
  plugins = {
  	treesitter = {
  	  enable = true;
  	  settings = {
  	    highlight.enable = true;
  	    indent.enable = true;
  	    autopairs.enable = true;
  	    folding.enable = true;
  	    auto_install = true;
  	  };
  	  nixvimInjections = true;
  	};

  	treesitter-textobjects = {
  	  enable = true;

  	  select = {
  	  	enable = true;
  	  	lookahead = true;
  	  };
  	  
  	  move.enable = true;
  	  swap.enable = true;
  	};
  	
  	ts-context-commentstring = {
  	  enable = true;
  	  disableAutoInitialization = false;
  	};

  	treesitter-context.enable = true;
  	ts-autotag.enable = true;
  };
}
