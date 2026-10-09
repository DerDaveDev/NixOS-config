{ config, pkgs, ... }:
{
  # SDD trimming enable
  services.fstrim.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  services.libinput.enable = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable auto update with nix switch (minus kernel udpates reoobt needed), default update intervals
  system.autoUpgrade.enable = true;
}
