{ lib, inputs, ... }:

{
  imports = [
    inputs.nix-flatpak.homeManagerModules.nix-flatpak
  ];

    services.flatpak.remotes = lib.mkOptionDefault [{
    name = "flathub-beta";
    location = "https://flathub.org/beta-repo/flathub-beta.flatpakrepo";
  }];
  services.flatpak = {
    enable = true;
    packages = [
    "org.gnome.gitlab.ilhooq.Bookup"
    ];

    services.flatpak.update.auto.enable = false;
    services.flatpak.uninstallUnmanaged = false;

    # Optional: Update them automatically
    update.onActivation = true;
  };
}
