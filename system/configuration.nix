{ pkgs, inputs, nix-colors, ... }: {
  # imports = [ # Include the results of the hardware scan.
  #   ./hardware-configuration.nix
  # ];
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    extraSpecialArgs = { inherit inputs nix-colors; };

    backupFileExtension = "backup";

    users.nikko = {
      imports = [ ../home ];
    };
  };

  fonts.packages = with pkgs; [
    nerd-fonts.dejavu-sans-mono
  ];

  boot.loader.grub = {
    enable = true;
    device = "/dev/sda";
    useOSProber = true;
  };

  networking = {
    networkmanager.enable = true;
  };

  time.timeZone = "Europe/Samara";

  i18n = {
    defaultLocale = "ru_RU.UTF-8";
    extraLocaleSettings = {
      LC_ADDRESS = "ru_RU.UTF-8";
      LC_IDENTIFICATION = "ru_RU.UTF-8";
      LC_MEASUREMENT = "ru_RU.UTF-8";
      LC_MONETARY = "ru_RU.UTF-8";
      LC_NAME = "ru_RU.UTF-8";
      LC_NUMERIC = "ru_RU.UTF-8";
      LC_PAPER = "ru_RU.UTF-8";
      LC_TELEPHONE = "ru_RU.UTF-8";
      LC_TIME = "ru_RU.UTF-8";
    };
  };

  services = {
    xserver = {
      enable = true;

      windowManager.awesome = {
        enable = true;
        luaModules = with pkgs.luaPackages; [
          luarocks
          luadbi-mysql
        ];
      };

      xkb = {
        layout = "us,ru";
        variant = "";
      };
    };

    displayManager = {
      sddm.enable = true;

      autoLogin = {
        enable = false;
        user = "nikko";
      };
    };

    printing.enable = true;

    pulseaudio.enable = false;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };

  security.rtkit.enable = true;

  users.users.nikko = {
    isNormalUser = true;
    description = "Vladislav Nekrasov";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  programs = {
    firefox.enable = true;
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    neovim
    git
  ];

  system.stateVersion = "24.11"; # Did you read the comment?

  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
  };
}
