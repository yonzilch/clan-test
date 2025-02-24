{
  lib,
  ...
}:
{
  imports = [
    ./network.nix
    ]
      ++ lib.filesystem.listFilesRecursive ../../modules/shared;

  clan.core.networking.targetHost = "root@tokyonight";

  disko.devices.disk.main.device = "/dev/vda";

  #users.users.user.name = "root";

  users.users.root.openssh.authorizedKeys.keys = [
    ''
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIM/fSAuDnRobkDNot+FFXwigu989reUVg2z3Vakq8wsu root@atlantic
    ''
  ];

  clan.core.networking.zerotier.controller.enable = true;
}
