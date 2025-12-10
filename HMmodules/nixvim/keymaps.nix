{ pkgs, ... }:
{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<leader>f";
      action = "<cmd>Format<CR>";
      options = {
        desc = "Format Buffer";
      };
    }
    {
      mode = "n";
      key = "<leader>m";
      action = "<cmd>Telescope man_pages<CR>";
      options = {
        desc = "Search Man Pages";
      };
    }
  ];
}
