{ config, pkgs, ... }:

{
  # Enable the KDE Plasma Desktop Environment.
  services.desktopManager.plasma6.enable = true;
  #services.displayManager.sddm.enable = true;

  services.displayManager.gdm.enable = true;
  #services.desktopManager.gnome.enable = true;
}
