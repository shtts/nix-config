{ ... }:
{

  programs.fastfetch = {
    enable = true;
    settings = {
      logo = {
        source = "/home/zoomer/Pictures/pfp/john_up_birefnet.png";
        padding = {
          top = 2;
          left = 4;
        };
        width = 30;
        height = 14;
      };
      modules = [
        {
          type = "custom";
          format = "┌───────────────────────────Hardware─────────────────────────────────┐";
        }
        {
          type = "host";
          key = " PC";
          keyColor = "white";
        }
        {
          type = "cpu";
          key = "│ ├ ";
          keyColor = "white";
        }
        {
          type = "gpu";
          key = "│ ├ ";
          keyColor = "white";
        }
        {
          type = "memory";
          key = "│ ├ ";
          keyColor = "white";
        }
        {
          type = "disk";
          key = "└ └󰋊 ";
          keyColor = "white";
        }
        {
          type = "custom";
          format = "└────────────────────────────────────────────────────────────────────┘";
        }
        "break"
        {
          type = "custom";
          format = "┌───────────────────────────Software─────────────────────────────────┐";
        }
        {
          type = "os";
          key = "󱄅 OS";
          keyColor = "white";
        }
        {
          type = "kernel";
          key = "│ ├ ";
          keyColor = "white";
        }
        {
          type = "bios";
          key = "│ ├ ";
          keyColor = "white";
        }
        {
          type = "packages";
          key = "│ ├󰏖 ";
          keyColor = "white";
        }
        {
          type = "shell";
          key = "└ └ ";
          keyColor = "white";
        }
        "break"
        {
          type = "wm";
          key = " WM";
          keyColor = "white";
        }
        {
          type = "lm";
          key = "│ ├ ";
          keyColor = "white";
        }
	{
          type = "wmtheme";
          key = "│ ├󰉼 ";
          keyColor = "white";
        }
        {
          type = "terminal";
          key = "└ └ ";
          keyColor = "white";
        }
        {
          type = "custom";
          format = "└────────────────────────────────────────────────────────────────────┘";
        }
        "break"
        {
          type = "custom";
          format = "┌────────────────────────────Uptime / DT─────────────────────────────┐";
        }
        {
          type = "uptime";
          key = "  Uptime ";
          keyColor = "magenta";
        }
        {
          type = "datetime";
          key = "  DateTime ";
          keyColor = "magenta";
        }
        {
          type = "custom";
          format = "└────────────────────────────────────────────────────────────────────┘";
        }

      ];
    };
  };

}
