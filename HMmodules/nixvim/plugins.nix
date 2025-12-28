{ ... }:
{
  programs.nixvim.plugins = {
    todo-comments.enable = true;

    flash = {
      enable = true;
    };

    toggleterm.enable = true;
    nvim-surround.enable = true;
    telescope = {
      enable = true;
      settings = {
        pickers = {
          man_pages = {
            sections = [ "ALL" ];
          };
        };
      };
    };
    web-devicons.enable = true;
    which-key = {
      enable = true;
      settings = {
        preset = "helix";
      };
    };

    markview.enable = true;
    lualine.enable = true;
    nvim-autopairs.enable = true;
    lsp = {
      enable = true;
      servers = {
        html.enable = true;
        cssls.enable = true;
        ts_ls.enable = true;
        jsonls.enable = true;
        qmlls.enable = true;
        nixd = {
          enable = true;
          settings = {
            formatting = {
              command = [ "nixfmt" ];
            };
          };
        };
      };
    };
    lsp-format.enable = true;
  };
}
