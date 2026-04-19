{ config, pkgs, ... }:

{
  home.username = "honeypot";
  home.homeDirectory = "/home/honeypot";

  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    fuzzel
    waybar
    mako
    firefox
    fastfetch
    vesktop
    xwayland-satellite
    htop

    ripgrep
    fd
    gcc
  ];

  programs.git.enable = true;
  programs.home-manager.enable = true;
}
