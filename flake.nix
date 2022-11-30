{
  description = "Floxpkgs/Project Template";
  nixConfig.bash-prompt = "[flox] \\[\\033[38;5;172m\\]λ \\[\\033[0m\\]";
  inputs.floxpkgs.url = "github:flox/floxpkgs";

  # Declaration of external resources
  # =================================

  # =================================

  outputs = args @ {floxpkgs, ...}:
    floxpkgs.project args (_: {
      config.extraPlugins = [
        (floxpkgs.plugins.floxEnvs {
          sourceType = "packages";
          dir = "pkgs";
        })
      ];
    });
}
