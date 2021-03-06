{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        idea.pycharm-community
        pyflame
        pyre
        python3Packages.notebook
        python3Packages.pyls-black
        python3Packages.pyls-isort
        python3Packages.pyls-mypy
        python3Packages.python-language-server
        python3Packages.snakeviz
        python3Packages.virtualenvwrapper
    ];
}
