{ config, pkgs, lib, ... }:

{
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;

    globals.mapleader = " ";
    globals.maplocalleader = " ";

    opts = {
      number = true;
      relativenumber = true;
      mouse = "a";
      showmode = false;
      clipboard = "unnamedplus";
      breakindent = true;
      undofile = true;
      ignorecase = true;
      smartcase = true;
      signcolumn = "yes";
      updatetime = 250;
      timeoutlen = 300;
      splitright = true;
      splitbelow = true;
      list = true;
      listchars = "tab:» ,trail:·,nbsp:␣";
      inccommand = "split";
      cursorline = true;
      scrolloff = 10;
      background = "dark";
    };

    keymaps = [
      {
        mode = "n";
        key = "<leader>pv";
        action = "<cmd>Oil<CR>";
        options.desc = "Open file explorer";
      }
      {
        mode = "n";
        key = "<leader>d";
        action = "<cmd>%delete<CR>";
        options.desc = "Delete whole file";
      }
      {
        mode = "n";
        key = "<leader>ff";
        action = "<cmd>Telescope find_files<CR>";
        options.desc = "Find files";
      }
      {
        mode = "n";
        key = "<leader>fg";
        action = "<cmd>Telescope live_grep<CR>";
        options.desc = "Live grep";
      }
      {
        mode = "n";
        key = "<leader>fb";
        action = "<cmd>Telescope buffers<CR>";
        options.desc = "Buffers";
      }
      {
        mode = "n";
        key = "<leader>fh";
        action = "<cmd>Telescope help_tags<CR>";
        options.desc = "Help tags";
      }
    ];

    plugins.telescope.enable = true;
    plugins.oil.enable = true;

    plugins.treesitter = {
      enable = true;
      settings = {
        highlight.enable = true;
        indent.enable = true;
      };
    };

    colorschemes.nightfox = {
      enable = true;
      settings = {
        options = {
          transparent = false;
        };
      };
    };

    colorscheme = "carbonfox";

    extraPackages = with pkgs; [
      nodejs
      python3
      ripgrep
    ];
  };
}
