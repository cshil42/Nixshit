{ ... }:
{
  home-manager.users.hans = {
    imports = [
      <plasma-manager/modules>
      ./kde/rc.nix
    ];
  };
}