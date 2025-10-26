# Provides a working fprintd package with our libfprint code.
{ flake, inputs, system, ... }:
inputs.nixpkgs.legacyPackages.${system}.fprintd.override {
  libfprint = flake.packages.${system}.default;
}
