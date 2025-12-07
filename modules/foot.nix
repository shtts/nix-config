{ config, pkgs, ... }:
{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        pad = "10x10";
        include = "/nix/store/0crnh6a2j96izghj1kw05dlgy8ag598r-foot-1.25.0-themes/share/foot/themes/nord";
      };
      font = "JetBrainsMono Nerd Font Mono:size=12";
    };
  };
}
