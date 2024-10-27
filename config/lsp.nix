{
  plugins.lsp = {
    enable = true;
    servers = {
      rust_analyzer.enable = true;
      rust_analyzer.installCargo = false;
      rust_analyzer.installRustc = false;

      nixd = {
        enable = true;
        settings = {
          formatting.command = [ "nixpkgs-fmt" ];
          options = {
            nixos.expr = "(builtins.getFlake \"/etc/nixos\").nixosConfigurations.good-pc.options";
          };
        };
      };
    };
  };

  plugins.lsp-format.enable = true;

  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings.sources = [
      { name = "nvim_lsp"; }
      { name = "path"; }
      { name = "buffer"; }
    ];
    settings.mapping = {
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
      "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
    };
  };
}
