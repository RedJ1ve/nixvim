{
  imports = [
    ./cmp
    ./jupyter
    ./lsp
  	./ui
  	./utils
  ];

  globals.mapleader = " ";

  keymaps = [
    {
      action = "<Nop>";
      key = "<Space>";
      options = { noremap = true; silent = true; };
    }
  ];
}
