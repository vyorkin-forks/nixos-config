{ config, pkgs, lib, ... }:

{
    imports = [
        ../toolbox/nas/scripts.nix
    ];

    powerManagement = {
        enable = true;
        # FIXME: ${pkgs.systemd}/bin/systemctl --user restart dunst.service
        powerDownCommands = ''
            ${pkgs.force_unmount_nas}/bin/force_unmount_nas
        '';
        resumeCommands = ''
            ${pkgs.systemd}/bin/systemctl restart imapfilter.service
            ${pkgs.systemd}/bin/systemctl try-restart sshuttle.service
        '';
        powertop.enable = true;
	cpuFreqGovernor = lib.mkDefault "powersave";
    };
    services.tlp.enable = true;
    services.acpid.enable = true;
}
