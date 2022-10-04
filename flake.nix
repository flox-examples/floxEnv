{
  description = "Hello in Rust";

  inputs.floxpkgs.url = "/home/tom/flox/floxpkgs";

  nixConfig.bash-prompt = "[flox] \\[\\033[38;5;172m\\]λ \\[\\033[0m\\]";

  outputs = args @ {floxpkgs, ...}: floxpkgs.project args ( { self, inputs, lib, ...  }: {
    passthru = {
      inherit (inputs.floxpkgs.inputs.nixpkgs) evalCatalog catalog;
    };
  });
}
