{ config, pkgs, ... }:
{
  # SDD trimming enable
  services.fstrim.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  services.libinput.enable = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;
}
