{ pkgs, ... }:

{
    services.openvpn = {
        servers = {
            jobvpn = {
                # TODO: make more declarative, i.e. to hide private part and automate all the rest
                config = ''config /etc/nixos/users/vyorkin/private/raw/vpn/job.current/office.ovpn'';
                autoStart = false;
                up = "${pkgs.update-resolv-conf}/libexec/openvpn/update-resolv-conf";
                down = "${pkgs.update-resolv-conf}/libexec/openvpn/update-resolv-conf";
            };
	    homevpn = {
                config = ''config /etc/nixos/users/vyorkin/private/raw/vpn/home.current/home.ovpn'';
                autoStart = false;
                up = "${pkgs.update-resolv-conf}/libexec/openvpn/update-resolv-conf";
                down = "${pkgs.update-resolv-conf}/libexec/openvpn/update-resolv-conf";
	    };
        };
    };
}
