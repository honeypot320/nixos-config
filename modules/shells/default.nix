{ pkgs, ... }:

{
  environment.shells = with pkgs; [
    fish
  ];

  programs = {
    fish = {
      enable = true;
      shellAliases = {
        gs = "git status";
        ns = "sudo nixos-rebuild switch --flake /etc/nixos#honeypot";
      };
      interactiveShellInit = ''
        set -g fish_greeting
      '';
    };

    command-not-found.enable = false;
    nix-index = {
      enable = true;
      enableFishIntegration = true;
    };
  };
}
