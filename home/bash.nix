{ ... }: {
  programs.bash = {
    enable = true;
    enableCompletion = true;
    shellAliases = {
      sf = "sudo nixos-rebuild switch --flake .";
      ls = "eza";
      ".." = "cd ..";
    };
  };
}
