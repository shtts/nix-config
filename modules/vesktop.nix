{ config, nixpkgs, ... }:
{
  programs.vesktop = {
    enable = true;
    vencord.settings = {
      plugins = {
        MessageLogger = {
          enabled = true;
        };
        FakeNitro.enabled = true;
	CrashHandler.enable = true;
	FullSearchContext.enable = true;
	SilentTyping.enable = true;
	VoiceMessages.enable = true;
	YoutubeAdblock.enable = true;
	WhoReacted.enable = true;
      };

    };
  };
}
