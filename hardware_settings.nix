{ config, pkgs, ... }:

{
    #boot.kernelParams = [ "video=1920x1080@60" ];

    hardware.graphics.enable = true;

    # Enables steam udev rules for controllers and other input devices
    hardware.steam-hardware.enable = true;

    # Bluetooth settings
    hardware.bluetooth = {
        enable = true;
        powerOnBoot = true;
    };
}
