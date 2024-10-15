{
  plugins.conform-nvim = {
  	enable = true;
  	settings = {
  	  notify_on_error = true;
  	  format_on_save = {
  	  	timeoutMS = 500;
  	  	lspFallback = true;
  	  };
  	  formatters_by_ft = {
  	    html = {
  	      __unkeyed-1 = "prettierd";
  	      __unkeyed-2 = "prettier";
  	      stop_after_first = true;
  	    };
  	    css = {
  	      __unkeyed-1 = "prettierd";
  	      __unkeyed-2 = "prettier";
  	      stop_after_first = true;
  	    };
  	    javascript = {
  	      __unkeyed-1 = "prettierd";
  	      __unkeyed-2 = "prettier";
  	      stop_after_first = true;
  	    };
  	    javascriptreact = {
  	      __unkeyed-1 = "prettierd";
  	      __unkeyed-2 = "prettier";
  	      stop_after_first = true;
  	    };
  	    typescript = {
  	      __unkeyed-1 = "prettierd";
  	      __unkeyed-2 = "prettier";
  	      stop_after_first = true;
  	    };
  	    typescriptreact = {
  	      __unkeyed-1 = "prettierd";
  	      __unkeyed-2 = "prettier";
  	      stop_after_first = true;
  	    };
  	    java = [ "google-java-format" ];
  	    python = [ "black" ];
  	    lua = [ "stylua" ];
  	    nix = [ "alejandra" ];
  	    markdown = {
  	      __unkeyed-1 = "prettierd";
  	      __unkeyed-2 = "prettier";
  	      stop_after_first = true;
  	    };
  	    rust = [ "rustfmt" ];
  	  };
  	};
  };
}
