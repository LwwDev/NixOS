{ config, pkgs, ... }:

{
  imports = [
    ./programs/ghostty.nix
  ];

  home.username = "lw";
  home.homeDirectory = "/home/lw";
  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
