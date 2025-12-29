{ pkgs, ... }:
{
  programs.carapace = {
    enable = true;
  };

  programs.nh = {
    enable = true;
    flake = "/home/zoomer/.config/nix";
    clean = {
      enable = true;
      dates = "weekly";
    };
  };

  programs.bat = {
    enable = true;
    config.theme = "Nord";
  };

  programs.nix-index = {
    enable = true;
    enableNushellIntegration = true;
  };

  programs.eza = {
    enable = true;
    enableNushellIntegration = true;
    colors = "always";
    icons = "always";
  };

  programs.delta = {
    enable = true;
    enableJujutsuIntegration = true;
    enableGitIntegration = true;
  };

  programs.jujutsu = {
    enable = true;
    settings = {
      user = {
        email = "alasssds@proton.me";
        name = "shtts";
      };
    };
  };

  programs.atuin = {
    enable = true;
    enableNushellIntegration = true;
    daemon.enable = true;
  };

  programs.noti = {
    enable = true;
  };

  programs.zoxide = {
    enable = true;
    enableNushellIntegration = true;
  };

  programs.tealdeer = {
    enable = true;
  };

  programs.fd.enable = true;

  home.packages = with pkgs; [
    ncdu
    ripgrep
    imagemagick
    fd
    unixtools.xxd
    nix-output-monitor
    nvd
    bash
  ];

}
