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

    #Flatpak setup
    services.flatpak.enable = true;

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    # Install firefox.
    programs.firefox.enable = true;

    # List packages installed in system profile.
    # You can use https://search.nixos.org/ to find more packages (and options).
    environment.systemPackages = with pkgs; [
        # Command line
        git
        vim
        wget
        lm_sensors
        htop
        flutter
        dmidecode

        # Graphical
        vscode
        godot
        antigravity
        gitnuro
    ];
}
