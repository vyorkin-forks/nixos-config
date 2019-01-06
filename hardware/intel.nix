{ config, lib, pkgs, ... }:

{
    # TODO: think of extracting kernel-related options
    boot.initrd.availableKernelModules = [
      "xhci_pci"
      "nvme"
      "usb_storage"
      "sd_mod"
    ];

    boot.kernelModules = [ "kvm-intel" ];

    hardware.cpu.intel.updateMicrocode = true;
    hardware.enableAllFirmware = true;

    nix.maxJobs = lib.mkDefault 8;
    nix.buildCores = lib.mkDefault 8;
}
