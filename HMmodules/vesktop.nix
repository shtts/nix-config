{ pkgs, ... }:
{
  programs.vesktop = {
    enable = true;

    vencord = {
      themes = {
        "nordic" = builtins.readFile (
          pkgs.fetchurl {
            url = "https://github.com/orblazer/discord-nordic/blob/master/nordic.theme.css";
            sha256 = "sha256-GGuNEc4h9oyOrwkEDsMfmclJWDASwtN6ZNolxaZddQc=";
          }
        );
      };

      settings = {
        enabledThemes = [ "nordic.css" ];

        plugins = {
          MessageLogger.enabled = true;
          FakeNitro.enabled = true;
          CrashHandler.enabled = true;
          FullSearchContext.enabled = true;
          SilentTyping.enabled = true;
          VoiceMessages.enabled = true;
          YoutubeAdblock.enabled = true;
          WhoReacted.enabled = true;
        };
      };
    };
  };
}
