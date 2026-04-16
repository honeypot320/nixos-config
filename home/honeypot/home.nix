{ config, pkgs, ... }:

{
  home.username = "honeypot";
  home.homeDirectory = "/home/honeypot";

  home.stateVersion = "25.11";

  programs.git.enable = true;

  programs.neovim = {
    enable = true;
    defaultEditor = true;

    withPython3 = true;
    withRuby = true;

    initLua = ''
      vim.g.mapleader = " "

      vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
    '';
  };

  programs.home-manager.enable = true;
}
