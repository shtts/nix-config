{ pkgs, ... }:
{
  programs.vesktop = {
    enable = true;

    vencord = {
      themes = {
        "nordic" = builtins.readFile (
          pkgs.fetchurl {
            url = "https://raw.githubusercontent.com/orblazer/discord-nordic/master/nordic.theme.css";
            sha256 = "sha256-ETN/eShl6uX0TK6OUjLeNP8RdymVK2BuO7XFUwrQQYI=";
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
