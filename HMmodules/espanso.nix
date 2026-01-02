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

          # HTML
          {
            trigger = ":doctype";
            replace = "<!DOCTYPE html>";
          }
          {
            trigger = ":meta-charset";
            replace = "<meta charset=\"$|$\">";
          }
          {
            trigger = ":meta-utf-8";
            replace = "<meta charset=\"UTF-8\">";
          }
          {
            trigger = ":meta-viewport";
            replace = "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">";
          }
          {
            trigger = ":meta-author";
            replace = "<meta name=\"author\" content=\"$|$\">";
          }
          {
            trigger = ":meta-desc";
            replace = "<meta name=\"description\" content=\"$|$\">";
          }
          {
            trigger = ":meta-keywords";
            replace = "<meta name=\"keywords\" content=\"$|$\">";
          }
          {
            trigger = ":title";
            replace = "<title>$|$</title>";
          }

          # Structure & Blocks
          {
            trigger = ":div";
            replace = "<div>$|$</div>";
          }
          {
            trigger = ":html";
            replace = "<html>$|$</html>";
          }
          {
            trigger = ":head";
            replace = "<head>$|$</head>";
          }
          {
            trigger = ":body";
            replace = "<body>$|$</body>";
          }
          {
            trigger = ":style";
            replace = "<style>$|$</style>";
          }

          # Text & Links
          {
            trigger = ":a";
            replace = "<a href=\"\">$|$</a>";
          }
          {
            trigger = ":a2";
            replace = "<a href=\"{{clipboard}}\" target=\"_blank\" rel=\"noopener noreferrer\">$|$</a>";
          }
          {
            trigger = ":br";
            replace = "<br>";
          }
          {
            trigger = ":p";
            replace = "<p>$|$</p>";
          }
          {
            trigger = ":block";
            replace = "<blockquote>$|$</blockquote>";
          }

          # Lists & Tables
          {
            trigger = ":ul";
            replace = ''
              <ul>
                 <li>$|$</li>
              </ul>'';
          }
          {
            trigger = ":li";
            replace = "<li>$|$</li>";
          }
          {
            trigger = ":table";
            replace = ''
              <table width="$|$" border="" align="">
                 <tr>
                    <td width=""></td>
                 </tr>
              </table>'';
          }
          {
            trigger = ":td";
            replace = "<td>$|$</td>";
          }

          # Forms & Inputs
          {
            trigger = ":form";
            replace = "<form action=\"\" method=\"\">$|$</form>";
          }
          {
            trigger = ":button";
            replace = "<button type=\"button\">$|$</button>";
          }
          {
            trigger = ":label";
            replace = "<label for=\"\">$|$</label>";
          }
          {
            trigger = ":submit";
            replace = "<input type=\"submit\" value=\"$|$\">";
          }
          {
            trigger = ":input-text";
            replace = "<input type=\"text\" name=\"\" id=\"\">";
          }
          {
            trigger = ":input-password";
            replace = "<input type=\"password\" name=\"\" id=\"\">";
          }
          {
            trigger = ":input-radio";
            replace = "<input type=\"radio\" name=\"\" id=\"\" value=\"$|$\">";
          }
          {
            trigger = ":input-checkbox";
            replace = "<input type=\"checkbox\" name=\"\" id=\"\" value=\"$|$\">";
          }
          {
            trigger = ":input-file";
            replace = "<input type=\"file\" name=\"\" id=\"\">";
          }
          {
            trigger = ":select";
            replace = ''
              <select name="$|$" id="">
                 <option value=""></option>
              </select>'';
          }
          {
            trigger = ":optgroup";
            replace = ''
              <select name="$|$" id="">
                 <optgroup label="">
                    <option value=""></option>
                 </optgroup>
              </select>'';
          }
          {
            trigger = ":option";
            replace = "<option value=\"$|$\"></option>";
          }

          # Media & Scripts
          {
            trigger = ":css";
            replace = "<link rel=\"stylesheet\" type=\"text/css\" href=\"$|$\">";
          }
          {
            trigger = ":script";
            replace = "<script>$|$</script>";
          }
          {
            trigger = ":js";
            replace = "<script type=\"text/javascript\" src=\"$|\"></script>";
          }
          {
            trigger = ":img";
            replace = "<img src=\"$|$\" alt=\"\">";
          }

          # Skeletons
          {
            trigger = ":docskel";
            replace = ''
              <!DOCTYPE html>
              <html>

                 <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1">
                    <title>$|$</title>
                 </head>

                 <body>
                 </body>

              </html>'';
          }

        ];
      };
    };
    waylandSupport = true;
  };
}
