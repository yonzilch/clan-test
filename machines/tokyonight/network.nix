{ config, lib, ... }:
{
  systemd.network = {
    enable = true;
    networks.eth0 = {
      address = [
        lib.readFile config.sops.secrets.tokyonight-network.path
      ];
      gateway = [ "45.8.114.1" ];
      matchConfig.Name = "eth0";
      networkConfig = {
        IPv6AcceptRA = false;
      };
      routes = [
        {
          Gateway = "2a12:a304:4::1";
          GatewayOnLink = true;
        }
      ];
    };
  };
}
