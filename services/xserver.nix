{ config, pkgs, ... }:
{
    imports = [
        ./wm/xmonad.nix
    ];
    services = {
        xserver = {
            enable = true;
            videoDrivers = [ "modesetting" "intel" ];
            desktopManager = {
                xterm.enable = false;
                gnome3.enable = true;
                default = "none";
            };
            displayManager = {
                lightdm.enable = true;
                gdm.enable = false;
                # TODO: think of migrating to home-manager "xsession" module (beware that it is more versatile)
                sessionCommands = ''
                    ${pkgs.xlibs.xmodmap}/bin/xmodmap /etc/Xmodmaprc
                    ${pkgs.xlibs.xmodmap}/bin/xmodmap -e "clear Lock"

                    export CURRENT_WM=${config.services.xserver.windowManager.default}
                    export TZ="${config.time.timeZone}"

                    ${pkgs.wmname}/bin/wmname LG3D

                    source ~/common_settings

                    ${pkgs.xorg.xrdb}/bin/xrdb -merge .Xresources
                '';
            };
            xkbOptions = "caps:none";
            layout = "us,ru";
            libinput = {
                enable = true;
                naturalScrolling = true;
                disableWhileTyping = true;
                tapping = false;
                tappingDragLock = false;
                accelSpeed = "0.6";
            };
            xautolock = {
                enable = true;
                time = 3;
                locker = "${pkgs.xkblayout-state}/bin/xkblayout-state set 0; ${pkgs.i3lock-color}/bin/i3lock-color -c 232729; ${pkgs.xorg.xset}/bin/xset dpms force off";
                nowlocker = "${pkgs.xkblayout-state}/bin/xkblayout-state set 0; ${pkgs.i3lock-color}/bin/i3lock-color -c 232729; ${pkgs.xorg.xset}/bin/xset dpms force off";
                extraOptions = ["-detectsleep" "-lockaftersleep"];
            };
        };
        redshift = {
            enable = true;
            latitude = "${config.sys.redshift.latitude}";
            longitude = "${config.sys.redshift.longitude}";
            temperature.day = 5500;
            temperature.night = 3700;
        };
        arbtt.enable = true;
        autorandr = {
            enable = true;
            defaultTarget = "mobile";
        };
        compton = {
            enable = true;
            backend = "glx";
            vSync = "opengl-swc";
            opacityRules = [];
            package = pkgs.compton-git;
        };
    };

    environment.systemPackages = with pkgs; [
        arandr
        dmenu2
        edid-decode
        gmrun
        haskellPackages.arbtt
        haskellPackages.xmobar
        haskellPackages.yeganesh
        i3lock-color
        taffybar
        xclip
        xdotool
        xlibs.xev
        xlibs.xmodmap
        xlibs.xprop
        xorg.xdpyinfo
        xorg.xhost
        xosd

        gnome3.gnome-tweak-tool
    ];
    fonts = {
        fontconfig = {
            enable = true;
            useEmbeddedBitmaps = true;
        };
        enableFontDir = true;
        enableGhostscriptFonts = true;
        fonts = with pkgs; [
            # input-fonts # NOTE: no automated download, should prefetch manually
            anonymousPro
            corefonts
            dejavu_fonts
            dosemu_fonts
            emacs-all-the-icons-fonts
            emojione
            fantasque-sans-mono
            fira
            fira-code
            fira-mono
            font-awesome-ttf
            font-droid
            freefont_ttf
            go-font
            gohufont
            google-fonts
            hack-font
            inconsolata
            iosevka
            liberation_ttf
            mononoki
            mplus-outline-fonts
            noto-fonts
            noto-fonts-emoji
            powerline-fonts
            profont
            proggyfonts
            roboto
            roboto-mono
            roboto-slab
            source-code-pro
            terminus_font
            terminus_font_ttf
            ttf_bitstream_vera
            ubuntu_font_family
            unifont
            vistafonts
        ];
    };
}