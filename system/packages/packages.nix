{ config, pkgs, ... }:

{
    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users."dave" = {
        isNormalUser = true;
        description = "dave";
        extraGroups = [ "networkmanager" "wheel" ];
        packages = with pkgs; [
        kdePackages.kate
        thunderbird
        ];
    };

    # Install firefox.
    programs.firefox.enable = true;

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    # List packages installed in system profile.
    # You can use https://search.nixos.org/ to find more packages (and options).
    environment.systemPackages = with pkgs; [
        #command line
        git
        vim
        wget
        lm_sensors
        htop
        flutter

        #graphical
        vscode
        godot
    ];
}
