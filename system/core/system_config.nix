{ config, pkgs, ... }:

{
  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Enable auto update with switch (minus kernel udpates reoobt needed) with default update intervals
  system.autoUpgrade.enable = true;
}
