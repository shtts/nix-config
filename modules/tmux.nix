{ pkgs, ... }:
{
  programs.tmux = {
    enable = true;
    escapeTime = 0;
    mouse = true;
    baseIndex = 1;
    historyLimit = 100000;
    disableConfirmationPrompt = true;
    keyMode = "vi";
    customPaneNavigationAndResize = true;
    plugins = with pkgs; [
      tmuxPlugins.nord
    ];
  };
}
