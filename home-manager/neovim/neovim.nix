{
  programs.nixvim = {
    enable = true;
    colorschemes.gruvbox.enable = true;

    opts = {
      number = true;
      relativenumber = true;

      ignorecase = true;
      smartcase = true;

      expandtab = true;
      smarttab = true;
      shiftwidth = 2;
    };

    keymaps = [
      {
        key = "<esc>";
        options.silent = true;
        action = ":noh<cr><esc>";
      }
    ];

    plugins = {
      airline = {
        enable = true;
      };

      lsp-format.enable = true;

      lsp = {
        enable = true;

        servers = {
          pyright.enable = true;
        };
      };
    };
  };
}
