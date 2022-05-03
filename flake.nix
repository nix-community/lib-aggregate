{
  description = "a flake to aggregate pure nix libs which do not depend on nixpkgs";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs-lib.url = "github:nix-community/nixpkgs.lib";
  };

  outputs = inputs: {
    lib = inputs.nixpkgs-lib.lib
      // { flake-utils = inputs.flake-utils.lib; };
  };
}
