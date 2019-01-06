{ config, pkgs, ... }:

{
    services.kmscon = {
        enable = true;
        hwRender = true;
        extraConfig = ''
            font-name=Iosevka Bold # TODO: templatize
            font-size=14
        '';
        extraOptions = "--term xterm-256color";
        autologinUser = "vyorkin";
    };

    services.urxvtd.enable = true;

    environment.systemPackages = with pkgs; [
        alacritty
        eternal-terminal
        kitty # TODO: review and compare with Alacritty
        rxvt_unicode-with-plugins
        tmux
    ];
}
