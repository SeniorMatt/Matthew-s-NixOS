{ inputs, ... }:
{
  imports = [
    inputs.steam-config-nix.homeModules.default
  ];

  programs.steam.config = { 
    enable = true;
    closeSteam = true;

    apps = {
      # Team Fortress 2
      "440" = {
        launchOptions = "gamescope -h 720 -r 60 --force-grab-cursor -- %command%";
      };
    };
  };
}
