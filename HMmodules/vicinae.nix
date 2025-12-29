{
  pkgs,
  config,
  ...
}:
{
  programs.vicinae = {
    enable = true;
    extensions = [
      (config.lib.vicinae.mkExtension {
        name = "swww-switcher";
        src = pkgs.fetchFromGitHub {
          owner = "ViSovereign";
          repo = "swww-switcher";
          rev = "4726bb460107e3454e2e7541a9e392461b98d186";
          hash = "sha256-4zIvt7PR7qqbP+O1EHmRjy6nCtpZnAVdf8Al61gwA7A=";
        };
      })
    ];
    settings = {
      theme = "Nord";
    };
  };
}
