{ pkgs, config, ... }:
{

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    autocd = true;
    defaultKeymap = "viins";
    dotDir = "${config.home.homeDirectory}/.config/zsh";
    history = {
      expireDuplicatesFirst = true;
      path = "${config.xdg.configHome}/zsh/zsh_history";
    };
    zsh-abbr = {
      enable = true;
      abbreviations = {
        c = "clear";
        fs = "fastfetch";
        m = "microfetch";
        n = "nvim";
        b = "y ~/Books/";
        ne = "neovide";

        # git aliases
        g = "git";
        gs = "git status";
        ga = "git add .";
        gc = "git commit -m";
        gp = "git push";
        gpo = "git push -u origin";
        gl = "git pull";
        gco = "git checkout";
        gcb = "git checkout -b";

        # nix specific aliases
        con = "nvim ~/.config/nixos/configuration.nix";
        build = "sudo nixos-rebuild switch --flake ~/dotfiles/.config/nixos#tomtom --upgrade";
        hm = "cd ~/.config/home-manager";
        hms = "home-manager switch -b backup --show-trace";
        upd = "nix flake update";
      };
    };

    initContent = ''
      fpath+=(${pkgs.pure-prompt}/share/zsh/site-functions)
      autoload -U promptinit; promptinit
      prompt pure
      bindkey '^f' autosuggest-accept
    '';
  };
  home.shell.enableZshIntegration = true;
}
