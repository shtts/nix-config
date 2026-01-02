{ inputs, pkgs, ... }:
{
  imports = [
    inputs.nixvim.homeModules.nixvim
    ./keymaps.nix
  ];

  programs.nixvim = {
    enable = true;
    package = pkgs.neovim-unwrapped;
    globals = {
      neovide_padding_top = 10;
      neovide_padding_bottom = 10;
      neovide_padding_left = 10;
      neovide_padding_right = 10;
    };

    enableMan = false;
    colorschemes.nord.enable = true;

    extraPackages = with pkgs; [
      nixfmt-rfc-style
    ];
    opts = {
      guifont = "JetBrainsMono Nerd Font:h12";
      number = true;
      relativenumber = true;
    };
    globals.mapleader = " ";

  };
}
