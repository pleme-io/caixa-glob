# nix/modules/nixos.nix — auto-generated from glob.caixa.lisp
# description: ""
{ config, lib, pkgs, ... }:
let
  cfg = config.services.glob;
in {
  options.services.glob = {
    enable = lib.mkEnableOption "glob";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.glob or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
