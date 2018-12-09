{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        ansible
        ansible-lint
        atom
        binutils
        cloc
        doxygen
        elfinfo
        flamegraph
        gdb
        gdbgui
        gist
        git
        git-lfs
        git-quick-stats
        git-sizer
        gitAndTools.ghq
        gitAndTools.git-extras
        gitAndTools.git-imerge
        gitAndTools.git-open
        gitAndTools.git-recent
        gitAndTools.git-secret
        gitAndTools.git-secrets
        gitAndTools.gitflow
        gitAndTools.pass-git-helper
        gitinspector
        gitstats
        global
        gtm
        highlight
        httplab
        idutils
        jq
        lazygit
        ltrace
        mercurial
        mycli
        patchelf
        patchutils
        pgcli
        reflex
        sloccount
        stgit
        vim
        vscode
        watchexec
        wuzz
        zeal

        # reveng
        radare2
        radare2-cutter
        retdec
        rr
    ];

    environment.shellAliases = {
        ptch = "${pkgs.patch}/bin/patch -Ntbp0 < ";
        uptch = "${pkgs.patch}/bin/patch -NRtbp0 < ";
        clptch = "${pkgs.findutils}/bin/find . -name \*.orig -o -name \*.rej | xargs rm";
    };

    programs.zsh.shellAliases = {
        ptch = "${pkgs.patch}/bin/patch -Ntbp0 < ";
        uptch = "${pkgs.patch}/bin/patch -NRtbp0 < ";
        clptch = "${pkgs.findutils}/bin/find . -name \*.orig -o -name \*.rej | xargs rm";
    };
}
