{ config, lib, pkgs, ... }:

{ 
  services.openssh = {
    enable = true;
    ports = [ 48222 ];
    settings = {
      PubkeyAuthentication = true;
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
      PermitRootLogin = "no";

      # --- debloaten ---
      X11Forwarding = false;
      AllowTCPForwarding = "no";
      AllowAgentForwarding = "no";
      PermitTunnel = "no";
      GatewayPorts = "no";
      Compression = "no";
      UseDNS = "no";

      # --- Limits & Timeouts ---
      MaxAuthTries = 3;
      MaxSessions = 2;
      LoginGraceTime = "15";
      MaxStartups = "1:50:5";
    };
  };

  # --- anti-bruteforce ---
  services.fail2ban = {
    enable = true;
    maxretry = 3;
    bantime = "24h";
    bantime-increment = {
      enable = true;
      maxtime = "168h";
    };
    jails.sshd = ''
      enabled = true
      port = 48222
      filter = sshd
      action = iptables-multiport[name=ssh, port="48222", protocol=tcp]
    '';
  };
}
