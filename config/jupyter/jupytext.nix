{
  extraPython3Packages = p: with p; [
  	jupytext
  ];
  
  plugins.jupytext = {
  	enable = true;
  	settings = {
  	  style = "markdown";
  	  output_extension = "md";
  	  force_ft = "markdown";
  	};
  };
}
