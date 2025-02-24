{ config, ... }:
{
  services = {
    cockpit = {
      enable = true;
      port = config.sops.secrets.tokyonight-cockpit-port;
    };
  };
}
