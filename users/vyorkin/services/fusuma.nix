{config, pkgs, ...}:

{
    systemd.services."fusuma" = {
        enable = true;
        description = "Fusuma";
        wantedBy = [ "graphical.target" ];
        environment = {
            DISPLAY = ":0";
            XAUTHORITY = "${config.users.extraUsers.vyorkin.home}/.Xauthority";
        };
        serviceConfig = {
            User = "vyorkin"; # TODO: think of abstracting away
            PIDFile = "/var/run/fusuma.pid";
            Restart = "always";
            RestartSec = 1;
            ExecStart = "${pkgs.fusuma}/bin/fusuma -c ${config.users.extraUsers.vyorkin.home}/.config/fusuma/config.yml";
        };
    };
}
