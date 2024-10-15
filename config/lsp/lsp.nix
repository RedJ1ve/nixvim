{
  plugins.lsp = {
  	enable = true;

  	servers = {
  	  basedpyright.enable = true;
  	  bashls.enable = true;
  	  clangd.enable = true;
  	  html.enable = true;
  	  jdtls.enable = true;
  	  ltex.enable = true;
  	  nil_ls.enable = true;
  	  tailwindcss.enable = true;
  	  ts_ls.enable = true;

  	  hls = {
  	    enable = true;
  	    installGhc = true;
  	  };

  	  rust_analyzer = {
  	  	enable = true;
  	  	installCargo = true;
  	  	installRustc = true;
  	  };

  	  typos_lsp = {
  	  	enable = true;
  	  	extraOptions.init_options.diagnosticSeverity = "Hint";
  	  };
  	};
  };
}
