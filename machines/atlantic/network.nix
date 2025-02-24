{ config, ... }:
{
  systemd.network = {
    enable = true;
    networks.eth0 = {
      address = [
        "${config.sops.secrets.atlantic-address.path}"
      ];
      gateway = [ "103.47.224.1" ];
      matchConfig.Name = "eth0";
      networkConfig = {
        IPv6AcceptRA = false;
      };
    };
  };
}
