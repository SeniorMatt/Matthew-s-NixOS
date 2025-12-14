{ lib, config, ... }:
{
  config = lib.mkIf (config.kitty.theme == "mona-lisa") {
    programs.kitty = {
      themeFile = "MonaLisa";
    };
  };
}
