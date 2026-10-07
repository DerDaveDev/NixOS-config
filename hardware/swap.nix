{ config, pkgs, ... }:

{
  # -----------------------------------------------------------
  # 1. ZRAM Configuration (Fast in-memory compressed swap)
  # -----------------------------------------------------------
  zramSwap = {
    enable = true;

    # Priority: higher number means it gets filled first
    priority = 100;

    # How much of your physical RAM can be used for zram
    # if there is a lot of idle memory useage than higher number is recommended
    # in case lot of memory is used at once so there is acitvity it is better to stick to mid/low mid ranges due to memory pressure
    memoryPercent = 60;

    # Compression algorithm: "zstd" provides good compression ratio
    algorithm = "zstd";
  };

  # -----------------------------------------------------------
  # 2. Disk Swapfile Configuration (Emergency overflow fallback)
  # -----------------------------------------------------------
  swapDevices = [
    {
      device = "/var/lib/swapfile";

      # Size in MiB (X GB * 1024 = 8 GiB)
      size = 16 * 1024;

      # Lower priority so that zram is used firstly then regular swap
      priority = 10;
    }
  ];

  # -----------------------------------------------------------
  # 3. Kernel Swappiness Tuning (Optional, recommended for zram)
  # -----------------------------------------------------------
  boot.kernel.sysctl = {
    # When using zram, a higher swappiness (High: 100–180, Default: 60)
    # encourages the kernel to aggressively compress idle memory
    # into zram instead of dropping filesystem cache
    "vm.swappiness" = 100;
  };
}
