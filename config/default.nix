{
  # Import all your configuration modules here
  imports = [
    ./plugins.nix
    ./keys.nix
    ./lsp.nix
  ];

  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };

  colorschemes.catppuccin = {
    enable = true;
    settings.flavour = "mocha";
  };


}
