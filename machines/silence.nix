{ config, pkgs, lib, ... }:

{
    imports = [
        ../pkgs/setup.nix
        <nixos-hardware/lenovo/thinkpad/x1/6th-gen>
        ../hardware/bluetooth.nix
        ../hardware/intel.nix
        ../hardware/silence.nix
        ../hardware/misc.nix
        ../hardware/sound.nix
        ../users/vyorkin/services/xserver.nix
        ../users/vyorkin/default.nix
        <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

    # boot.loader.grub = {
    #     enable = true;
    #     version = 2;
    #     device = "/dev/sda";
    #     configurationLimit = 10;
    # };

    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    boot.plymouth.enable = true;

    services = {
        irqbalance.enable = true;
        mpd.enable = true;
        chrony.enable = true;
        psd = {
            enable = true;
            resyncTimer = "30min";
        };
        openssh = {
            enable = true;
            forwardX11 = true;
        };
    };

    security.sudo.wheelNeedsPassword = false;

    users.extraUsers.root.hashedPassword = "586c56b7b6b6f68fca29c9ff2524e4dc52d51d5b6184a65f707dd3eae075e4c9afa81c9cd4042c26c9fb773d4f3de55fb55f363c6b0f5f6790baf4c4e3f32cb9";
    nix.trustedUsers = [ "root" ];

    security.polkit.extraConfig = ''
        /* Allow users in wheel group to manage systemd units without authentication */
        polkit.addRule(function(action, subject) {
            if (action.id == "org.freedesktop.systemd1.manage-units" &&
                subject.isInGroup("wheel")) {
                return polkit.Result.YES;
            }
        });
    '';

    i18n = {
        consoleFont = "Lat2-Terminus16";
        defaultLocale = "ru_RU.UTF-8";
        consoleUseXkbConfig = true;
        inputMethod = {
            enabled = "ibus";
            ibus.engines = with pkgs.ibus-engines; [
                table
                table-others # for LaTeX input
                m17n
            ];
        };
    };

    time.timeZone = "Europe/Moscow";

    services.printing = {
        enable = true;
        drivers = [ pkgs.hplip ];
    };

    # scanner
    nixpkgs.config = {
        sane.snapscanFirmware = "/etc/nixos/contrib/blobs/Esfw52.bin";
    };

    hardware.sane = {
        enable = true;
        # extraBackends = [ pkgs.epkowa ];
    };

    nixpkgs.config.allowUnfree = true;

    networking = {
        hostName = "silence";
        hostId = "2ab69157";
        firewall.enable = false;
        usePredictableInterfaceNames = true;
        wlanInterfaces = {
            "wlan0" = { device = "wlp2s0"; };
        };
        networkmanager = {
            enable = true;
            unmanaged = [ "interface-name:ve-*" ];
        };
    };

    system.stateVersion = "19.03";
}
