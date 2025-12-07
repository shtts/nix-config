{ pkgs, ... }:
{
  programs.tmux = {
    enable = true;
    secureSocket = false;
    escapeTime = 0;
    mouse = true;
    baseIndex = 1;
    historyLimit = 100000;
    disableConfirmationPrompt = true;
    keyMode = "vi";
    customPaneNavigationAndResize = true;
    plugins = with pkgs; [
      tmuxPlugins.nord
      tmuxPlugins.resurrect
      {
        plugin = tmuxPlugins.continuum;
        extraConfig = ''
          set -g @continuum-restore 'on'
          set -g @continuum-save-interval '15' # Save every 15 minutes
        '';
      }
    ];
  };
}
