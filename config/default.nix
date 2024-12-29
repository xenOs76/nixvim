{ pkgs, ... }:
{
  imports = [
    ./options.nix
    ./keymaps.nix
    ./ui.nix
    ./coding.nix
    ./colorschemes.nix
    # ./lsp.nix
    ./editor.nix
    ./formatting.nix
    ./linting.nix
  ];
}
