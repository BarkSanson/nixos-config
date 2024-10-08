{ pkgs, ... }:

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
      {
        key = "<C-n>";
        action = "<CMD>NvimTreeToggle<CR>";
        options.desc = "Toggle NvimTree";
      }
    ];

    plugins = {
      bufferline = {
        enable = true;
      };

      lualine = {
        enable = true;

        theme = "gruvbox";
      };

      lsp = {
        enable = true;

        servers = {
          pyright.enable = true;
          nixd.enable = true;
          bashls.enable = true;
        };
      };

      lsp-format.enable = true;

      luasnip.enable = true;

      cmp = {
        enable = true;

        settings = {
          sources = [
            { name = "path"; }
            { name = "nvim_lsp"; }
            { name = "luasnip"; }
          ];
        };
      };

      nvim-autopairs.enable = true;

      treesitter = {
        enable = true;

        indent = true;
      };

      nvim-tree = {
        enable = true;
        openOnSetupFile = true;
        autoReloadOnWrite = true;
      };
    };

    extraPlugins = with pkgs.vimPlugins; [
      vim-airline-themes
    ];
  };
}
