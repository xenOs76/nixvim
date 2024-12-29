{pkgs, ...}: {
  enableMan = false;
  extraPackages = with pkgs; [
    ripgrep
    lazygit
    fzf
    fd

    # formatters
    shfmt
    yamlfix
    nginx-config-formatter

    # lsp
    ansible-language-server
    nginx-language-server
    nixd
    ruff
  ];

  plugins.cmp.enable = true;
  plugins.cmp-buffer.enable = true;
  plugins.cmp-cmdline.enable = true;
  plugins.cmp-dictionary.enable = true;
  plugins.cmp-git.enable = true;
  plugins.cmp-path.enable = true;

  plugins.luasnip.package = true;

  plugins.barbar.enable = true;
  plugins.direnv.enable = true;
  plugins.gitignore.enable = true;
  plugins.indent-blankline.enable = true;
  plugins.illuminate.enable = true;
  plugins.lastplace.enable = true;
  plugins.lualine.enable = true;
  plugins.autoclose.enable = true;
  plugins.comment.enable = true;
  plugins.fugitive.enable = true;
  plugins.gitsigns.enable = true;
  plugins.lazy.enable = true;
  plugins.lazygit.enable = true;
  plugins.mini.enable = true;
  plugins.nvim-tree.enable = true;
  plugins.nix.enable = true;

  plugins.lint.enable = true;

  plugins.treesitter = {
    enable = true;
    folding = true;
    # auto_install = false;
    # ensure_installed = [
    #   "git_config"
    #   "git_rebase"
    #   "gitattributes"
    #   "gitcommit"
    #   "gitignore"
    # ];
    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      json
      lua
      make
      markdown
      nix
      regex
      toml
      vim
      vimdoc
      xml
      yaml
      helm
      hcl
      dockerfile
      go
      gpg
      jq
      muttrc
      nginx
      pem
      promql
      ssh_config
      yaml
      xml
    ];
  };

  imports = [
    ./options.nix
    ./ui.nix
    ./coding.nix
    ./colorschemes.nix
    ./lsp.nix
    ./editor.nix
    ./formatting.nix
  ];
}
