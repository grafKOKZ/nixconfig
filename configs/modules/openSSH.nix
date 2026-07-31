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
      AllowTCPForwarding = false;
      AllowAgentForwarding = false;
      PermitTunnel = false;
      GatewayPorts = false;
      Compression = false;
      UseDns = false;

      # --- Limits & Timeouts ---
      MaxAuthTries = 3;
      MaxSessions = 2;
      LoginGraceTime = "15s";
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
    jails.sshd.settings = {
      enabled = true;
      port = "48222";
      filter = "sshd";
      action = ''iptables-multiport[name=ssh, port="48222", protocol=tcp]'';
    };
  };
}
