{ pkgs, ... }:

{
  # Enable AppImage execution support
  programs.appimage = {
    enable = true;

    # Registers AppImage binaries with the Linux kernel (binfmt_misc).
    # This lets you execute AppImages directly (./app.AppImage) or via a file manager.
    binfmt = true;

package = pkgs.appimage-run.override {
      extraPkgs = pkgs: with pkgs; [
        # Legacy & System Compatibility
        icu
        libxcrypt-legacy
        openssl
        zlib
        fuse
        fuse3

        # Audio & Media
        alsa-lib
        libpulseaudio

        # Electron / WebKit dependencies
        nss
        nspr
        libsecret
        libnotify

        # Graphics & Display (Wayland & X11)
        libglvnd
        mesa
        libxkbcommon
        wayland
        libx11
        libxcursor
        libxi
        libxrandr
        libxrender
        libxfixes
        libxtst
        libxcomposite
        libxdamage
        libxext
        libxscrnsaver

        # GTK / Desktop environment libs
        glib
        gtk3
        cairo
        pango
        gdk-pixbuf
        at-spi2-atk
      ];
    };

  }; # programs.appimage

  # Make the CLI runner available system-wide
  environment.systemPackages = with pkgs; [
    appimage-run
  ];
}
