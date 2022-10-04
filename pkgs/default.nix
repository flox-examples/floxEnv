{
  mkShell,
  inputs,
  lib,
}:
with inputs.self.evalCatalog;
  lib.mkEnv {
    # Variables
    env.EXAMPLE_VAR = 1;

    # Hooks
    postShellHook = ''
      echo hello from shell hooks
    '';

    # catalog-provided packages
    packages = [
      stable.rust-analyzer.latest
      staging.rustc."1_61_0"
      stable.jq.latest
      #stable.default
    ];

    # TODO
    # packagesAttr = {

    #   rustc = {
    #     version = "1.61.0";
    #     stability = "staging";
    #   };

    #   jq = {};
    #   rust_analyzer = {};
    # };
  }


  # How to manage elements from different catalogs?
