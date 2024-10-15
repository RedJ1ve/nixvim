{ pkgs, ... }: {
  extraPackages = with pkgs; [
  	ueberzugpp
  ];
  
  plugins.image = {
  	enable = true;
  	backend = "ueberzug";
  };
}
