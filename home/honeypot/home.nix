{ config, pkgs, ... }:

{
  imports = [
    ../../modules/editors
  ];
  
  home.username = "honeypot";
  home.homeDirectory = "/home/honeypot";

  home.stateVersion = "25.11";

  programs.git.enable = true;
 
  programs.home-manager.enable = true;
}
