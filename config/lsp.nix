{pkgs, ...}: {
  plugins.lsp = {
    enable = true;

    servers = {
      ansiblels.enable = true;
      bashls.enable = true;
      docker_compose_language_service.enable = false;
      dockerls.enable = false;
      gopls.enable = false;
      helm_ls.enable = false;
      # jinja_lsp.enable = true;
      nginx_language_server.enable = true;
      nixd.enable = true;
      pylsp.enable = true;
      ruff.enable = true;
      sqlls = {
        enable = true;
        package = pkgs.sqls;
      };
      yamlls.enable = true;
      terraformls.enable = false;
      tflint.enable = false;
    };
  };

  plugins.lsp-format = {
    enable = true;
    settings = {
      yaml = {
        tab_width = 2;
      };
    };
  };
}
