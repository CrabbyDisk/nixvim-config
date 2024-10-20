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

  opts = {
      number = true;         # Show line numbers

      shiftwidth = 2;        # Tab width should be 2
    };


}
