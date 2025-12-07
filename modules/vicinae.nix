{
  pkgs,
  lib,
  ...
}:
{
  programs.vicinae = {
    enable = true;
  };

  home.activation = {
    restartVicinae = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
      $DRY_RUN_CMD nohup ${pkgs.vicinae}/bin/vicinae server --replace >/dev/null 2>&1 & disown
    '';
  };
}
