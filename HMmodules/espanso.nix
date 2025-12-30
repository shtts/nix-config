{ ... }:
{
  services.espanso = {
    enable = true;
    configs = {
      default = {
        show_notifications = false;
        keyboard_layout.layout = "us";
      };
    };
    matches = {
      base = {
        matches = [
          {
            trigger = ":btw";
            replace = "I use NIXOS btw";
          }
          {
            trigger = ":hr";
            replace = "<hr />";
          }
          {
            trigger = ":br";
            replace = "<br />";
          }
          {
            trigger = ":div";
            replace = "<div>\$|\$</div>";
          }
          {
            trigger = ":span";
            replace = "<span>\$|\$</span>";
          }
          {
            trigger = ":h1";
            replace = "<h1>\$|\$</h1>";
          }
          {
            trigger = ":h2";
            replace = "<h2>\$|\$</h2>";
          }
          {
            trigger = ":h3";
            replace = "<h3>\$|\$</h3>";
          }
          {
            trigger = ":para";
            replace = "<p>\$|\$</p>";
          }
          {
            trigger = ":ohhel";
            replace = "oh hello there";
          }
        ];
      };
    };
    waylandSupport = true;
  };
}
