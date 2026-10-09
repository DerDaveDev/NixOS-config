{ config, pkgs, ... }:
{
    # Use the systemd-boot EFI boot loader.
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    # Boot kernel params
    #boot.kernelParams = [ "video=1920x1080@60" ];
}
