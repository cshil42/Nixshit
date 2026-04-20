{
  description = "A simple NixOS flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations.Purple = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./config/Purple.nix ];
    };

    nixosConfigurations.framework = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./config/framework.nix ];
    };

    nixosConfigurations.vbox = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./config/vbox.nix ];
    };

    nixosConfigurations.Magenta = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./config/Magenta.nix ];
    };
  };
}
