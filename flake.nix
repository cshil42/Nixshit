{
  description = "A simple NixOS flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    # Separate unstable pin used only for claude-code. system.autoUpgrade
    # re-resolves this input on every run so claude-code stays current
    # without bumping the rest of the system.
    nixpkgs-claude.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, nixpkgs-claude, ... }:
  let
    claudeOverlay = {
      nixpkgs.overlays = [
        (final: prev: {
          claude-code = (import nixpkgs-claude {
            inherit (prev.stdenv.hostPlatform) system;
            config.allowUnfree = true;
          }).claude-code;
        })
      ];
    };
  in {
    nixosConfigurations.Purple = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./config/Purple.nix claudeOverlay ];
    };

    nixosConfigurations.framework = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./config/framework.nix claudeOverlay ];
    };

    nixosConfigurations.vbox = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./config/vbox.nix claudeOverlay ];
    };

    nixosConfigurations.Magenta = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./config/Magenta.nix claudeOverlay ];
    };
  };
}
