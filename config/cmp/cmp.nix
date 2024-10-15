{
  plugins = {
  	cmp-nvim-lsp.enable = true;
  	cmp-buffer.enable = true;
  	cmp-path.enable = true;
  	cmp-cmdline.enable = true;
  	cmp_luasnip.enable = true;

  	cmp = {
  	  enable = true;

  	  settings = {
  	  	experimental.ghost_text = true;

  	  	sources = [
  	  	  { name = "nvim_lsp"; }
  	  	  {
  	  	  	name = "buffer";
  	  	  	keyword_length = 3;
  	  	  }
  	  	  {
  	  	  	name = "path";
  	  	  	keyword_length = 3;
  	  	  }
  	  	  {
  	  	  	name = "luasnip";
  	  	  	keywork_length = 3;
  	  	  }
  	  	];

  	  	formatting = {
  	  	  feilds = [
  	  	  	"kind"
  	  	  	"abbr"
  	  	  	"menu"
  	  	  ];
  	  	  expandable_indicator = true;
  	  	};

  	  	performance = {
  	  	  debounce = 60;
  	  	  fetching_timeout = 200;
  	  	  max_view_entries = 5;
  	  	};
  	  };
  	};
  };
}
