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
    cord = {
      enable = true;
      settings = {
        user = {
          show_language_components = true;
        };

        timer = {
          enable = true;
          reset_on_idle = false;
        };

        editor = {
          client = "neovim";
          tooltip = "nixvim";
        };

        display = {
          theme = "classic";
          flavor = "accent";
          show_time = true;
          show_repository = true;
          show_cursor_position = false;
        };

        idle = {
          enable = true;
          show_idle = true;
          timeout = 300000;
          tooltip = "Idle";
        };

      };

    };

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
