{ pkgs, ... }: 

{
  environment.shells = with pkgs; [
    fish
  ];

  
  programs = {
    fish.enable = true;
    command-not-found.enable = false; # Required for fish
  };

  programs.nix-index = {
    enable = true;
    enableFishIntegration = true;
  };
}
