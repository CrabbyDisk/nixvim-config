{
  plugins.lsp = {
    enable = true;
    servers = {
      rust_analyzer.enable = true;
      rust_analyzer.installCargo = false;
      rust_analyzer.installRustc = false;

      glsl_analyzer.enable = true;

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

  plugins.luasnip.enable = true;

  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings.sources = [
      { name = "nvim_lsp"; }
      { name = "path"; }
      { name = "luasnip"; }
    ];
    settings.snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
    settings.mapping = {
      "<CR>" = "cmp.mapping.confirm({ select = true })";

      "<Tab>" = ''cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.locally_jumpable(1) then
        luasnip.jump(1)
      else
        fallback()
      end
    end, { "i", "s" })'';

      "<S-Tab>" = ''cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.locally_jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" })'';
    };

  };
}
