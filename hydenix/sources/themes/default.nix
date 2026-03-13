{ pkgs }:
let
  mkTheme = import ./utils/mkTheme.nix { inherit pkgs; };
  # Helper function to call each theme file with pkgs and mkTheme
  callTheme = file: import file { inherit pkgs mkTheme; };
in
{

  "Cat Latte" = callTheme ./Cat-Latte.nix;
  "Catppuccin Latte" = callTheme ./Catppuccin-Latte.nix;
  "Catppuccin-Macchiato" = callTheme ./Catppuccin-Macchiato.nix;
  "Catppuccin Mocha" = callTheme ./Catppuccin-Mocha.nix;
}
