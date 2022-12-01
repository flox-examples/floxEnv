{...}: {
  shell = {
    aliases = {};
    hook = ''
      echo hello from env
    '';
  };
  variables = {
    # ASSUMES POSIX vars
    THING = "1";
    A = "1";
  };
  packages = {
    nixpkgs-flox = {
      hello = {};
      yq = {};
      ripgrep = {
        #version = "13.0.0";
      };
    };
  };
}
