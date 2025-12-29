{ ... }:
{
  programs.yazi = {
    enable = true;
    shellWrapperName = "y";
    enableNushellIntegration = true;
  };

  programs.btop = {
    enable = true;
    settings = {
      color_theme = "nord";
    };
  };

  programs.fzf = {
    enable = true;
    defaultCommand = "fd";
  };

  programs.navi.enable = true;

  programs.lazygit = {
    enable = true;
    enableNushellIntegration = true;
  };
  programs.neovide = {
    enable = true;
  };
}
