{
  globals.mapleader = " ";
  keymaps = [
    {
      mode = "n";
      key = "<leader>s";
      action = "+search";
    }

    {
      mode = "n";
      key = "<leader>q";
      action = "+quit/session";
    }

    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>g";
      action = "+git";
    }
  ];
}
