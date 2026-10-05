{ config, pkgs, ... }:

{
    # Enables steam udev rules for controllers and other input devices
    hardware.steam-hardware.enable = true;

    # Bluetooth settings
    hardware.bluetooth = {
        enable = true;
        powerOnBoot = true;
    };
}
