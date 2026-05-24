# nix/modules/home-manager.nix — auto-generated from glob.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.glob; in {
  options.programs.glob = {
    enable = lib.mkEnableOption "glob";
    package = lib.mkOption { type = lib.types.package; default = pkgs.glob or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
