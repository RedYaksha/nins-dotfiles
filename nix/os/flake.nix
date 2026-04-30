{
  description = "NixOS system flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    wayland-flake.url = "/home/rp/dev/third-party/hydenix";
  };

  outputs = { self, nixpkgs, wayland-flake, ... }@inputs: {
    # Replace 'my-hostname' with your actual networking.hostName
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; }; 
      modules = [
        /etc/nixos/configuration.nix
      ];
    };
  };
}
