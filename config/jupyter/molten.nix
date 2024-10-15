{ pkgs, ...}: {
  extraPackages = with pkgs; [
  	jupyter
  	imagemagick
  ];
  
  extraPython3Packages = p: with p; [
  	pynvim
  	jupyter-core
  	jupyter-client
  	cairosvg
  	pnglatex
  	plotly
  	pyperclip
  ];

  plugins.molten = {
    enable = true;

    settings = {
   	  # molten_auto_open_output = false;
  	  molten_image_provider = "image.nvim";
  	  molten_wrap_output = true;
  	  molten_virt_text_output = true;
  	  molten_virt_lines_off_by_1 = true;
  	};
 };

 keymaps = [
   {
     action = "<cmd>MoltenEvaluateOperator<CR>";
     key = "<leader>e";
  	 options = {
  	   silent = true;
       desc = "evaluate operator";
     };
     mode = ["n"];
    }
   {
     action = "<cmd>noautocmd MoltenEnterOutput<CR>";
     key = "<leader>os";
     options = {
       silent = true;
       desc = "open output window";
     };
     mode = ["n"];
   }
   {
     action = "<cmd>MoltenReevaluateCell<CR>";
     key = "<leader>rr";
     options = {
       silent = true;
       desc = "re-eval cell";
     };
     mode = ["n"];
   }
   {
     action = "<cmd><C-u>MoltenEvaluateVisual<CR>gv";
     key = "<leader>r";
     options = {
       silent = true;
       desc = "execute visual selection";
     };
     mode = ["n"];
   }
   {
     action = "<cmd>MoltenHideOutput<CR>";
     key = "<leader>oh";
     options = {
       silent = true;
       desc = "close output window";
     };
     mode = ["n"];
   }
   {
     action = "<cmd>MoltenDelete<CR>";
     key = "<leader>md";
     options = {
       silent = true;
       desc = "delete Molten cell";
     };
     mode = ["n"];
   }
  ];
}
