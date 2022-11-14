{...}: {
  packages = {
    nixpkgs-flox = {
      hello = {};
      ripgrep = {
        version = "13.0.0";
      };
    };
  };
}
