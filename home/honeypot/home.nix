{ config, pkgs, ... }:

{
  home.username = "honeypot";
  home.homeDirectory = "/home/honeypot";

  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    kitty
    fuzzel
    waybar
    mako
    firefox
    fastfetch

    ripgrep
    fd
    gcc
  ];

  programs.git.enable = true;
  programs.home-manager.enable = true;
}
